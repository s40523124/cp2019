import "dart:html";
import "dart:math" as math;

void main() {
  querySelector("#submit").onClick.listen((e) => calcRabbits());
}

calcRabbits() {
  // binding variables to html elements:
  InputElement yearsInput = querySelector("#years");
  LabelElement output = querySelector("#output");
  // getting input
  String yearsString = yearsInput.value;
  int years = int.parse(yearsString);
  // calculating and setting output:
   output.innerHtml = "${calculateRabbits(years)}";
}

int calculateRabbits(int years) {
  return (years*1.8+32)
      .round()
      .toInt();
}
/*定義全域變數，num定義後面的變數代表"浮點數或整數"
num Celsius;
num Fahrenheit;
num C;
num F;

//主程式開始編譯
void main() {
    //於此輸入愈轉換之攝氏溫度溫度
    Celsius=(25);
    //於此輸入愈轉換之華氏溫度溫度
    Fahrenheit=(86);

    //將F定義為攝氏溫度轉換後的華氏溫度
    F=Celsius*1.8+32;
    //將C定義為華氏溫度轉換後的攝氏溫度
    C=(Fahrenheit-32)/1.8;

        //印出溫度轉換後之結果
        print("若攝氏溫度=$Celsius°C時，華氏溫度=$F°F。");
        print("若華氏溫度=$Fahrenheit°F時，攝氏溫度=$C°C。");
}
*/
