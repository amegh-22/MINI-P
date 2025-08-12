from fastapi import FastAPI, Request
from pydantic import BaseModel
import pandas as pd
import joblib

# Load your trained model
model = joblib.load("model.pkl")  # Save model first using joblib.dump(model, "model.pkl")

# Define request format
class InputData(BaseModel):
    sequence: str
    species: str
    mutation_type: str
    gene: str
    safe_general_medicine: str
    avoid_general_medicine: str

app = FastAPI()

@app.post("/predict")
def predict(data: InputData):
    # This is where you’d convert sequence into k-mer features and combine with other fields
    # You’ll need to duplicate your feature preprocessing here
    # For demo, let's just say we return dummy output

    # Normally: preprocess `data` to create feature vector → model.predict → return result
    return {"prediction": "some_disorder"}
uvicorn app:app --reload
dependencies:
  http: ^0.13.6
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> sendDataToBackend() async {
  final url = Uri.parse('http://127.0.0.1:8000/predict'); // Change if hosted
  final response = await http.post(
    url,
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode({
      'sequence': 'ATCGATCG...',
      'species': 'Human',
      'mutation_type': 'Substitution',
      'gene': 'BRCA1',
      'safe_general_medicine': 'Paracetamol',
      'avoid_general_medicine': 'Ibuprofen',
    }),
  );

  if (response.statusCode == 200) {
    final result = jsonDecode(response.body);
    print('Prediction: ${result['prediction']}');
  } else {
    print('Failed: ${response.statusCode}');
  }
}
