import 'dart:html';
import 'dart:math';
/*
* Application that interacts with webpage
*/

//Updates the calculation
void getCalculation(MouseEvent event) {
  //double concentrationHCl =
  //     double.parse((querySelector("#concentrationHCl") as InputElement).value);
  double concentrationNaOH =
      double.parse((querySelector("#concentrationNaOH") as InputElement).value);
  double volumeHCl =
      double.parse((querySelector("#volumeHCl") as InputElement).value);
  double volumeInitialNaOH =
      double.parse((querySelector("#volumeInitialNaOH") as InputElement).value);
  double volumeFinalNaOH =
      double.parse((querySelector("#volumeFinalNaOH") as InputElement).value);

  //Calculate the volume of NaOH
  double volumeNaOH = volumeFinalNaOH - volumeInitialNaOH;
  querySelector("#volumeNaOH").text = "$volumeNaOH".toString();

  //Calculate the mole of NaOH
  double moleNaOH = volumeNaOH * concentrationNaOH;

  //Calculate the concentration of HCl
  double concentrationHCl = moleNaOH / volumeHCl;
  querySelector("#result").text = "$concentrationHCl".toString();
}

//Main Method
void main() {
//Create a button listener that calls getCalculation() when clicked
  querySelector("#button").onClick.listen(getCalculation);
}
