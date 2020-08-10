import 'dart:math';

class Calculator {
  Calculator({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if(_bmi >= 25) {
      return 'Surpoids';
    } else if(_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Maigreur';
    }
  }

  String getInterpretation() {
    if(_bmi >= 25) {
      return 'Votre IMC est trop élévé : vous êtes en situation de surpoids. Votre médecin vous recommandera certainement de perdre du poids.';
    } else if(_bmi > 18.5) {
      return 'Votre IMC est normal : c’est-à-dire que vous n’êtes ni en surpoids, ni maigre. Continuez à manger équilibré, à faire de l’exercice régulièrement';
    } else {
      return 'Votre IMC est trop faible : vous êtes maigre, au sens médical du terme. Il est nécessaire pour vous de grossir.';
    }
  }
}