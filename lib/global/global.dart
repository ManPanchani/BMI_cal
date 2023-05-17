class Global {
  static double result = 0;

  static getOutPut() {
    double result = 0;

    if (result >= 30) {
      return "Overweight";
    } else if (result > 20) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  static getResult() {
    if (result >= 30) {
      return "Good"
          " medium fitness...";
    } else if (result > 20) {
      return "Very Good"
          " mind-blowing fitness...";
    } else {
      return "very Bad";
    }
  }
}
