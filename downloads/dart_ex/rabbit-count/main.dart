/*
void main() {
 print("Hello, World!");
}
*/

/*
 * 主函式也可以利用 => 定義單行的函式內容
main() => print("Hello, World!");
*/

/*
import 'dart:math' as math;

void main() {
  var n = 0; // number of rabbits
  print("The number of rabbits increases as:\n");
  for (int years = 0; years <= 10; years++) {
    n = (2 * math.pow(math.e, math.log(15) * years)).round().toInt();
    print("After $years years:\t $n animals");
  }
}
*/

/*
import 'dart:math' as math;

int rabbitCount = 0;
const int NO_YEARS = 10;
const int GROWTH_FACTOR = 15;

void main() {
  print("The number of rabbits increases as:\n");
  for (int years = 0; years <= NO_YEARS; years++) {
    rabbitCount = calculateRabbits(years);
    print("After $years years:\t $rabbitCount animals");
  }
}

int calculateRabbits(int years) {
  return (2 * math.pow(math.e, math.log(GROWTH_FACTOR) * years))
      .round()
      .toInt();
}
*/

import "dart:html";
import "dart:math" as math;

const int GROWTH_FACTOR = 15;

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
  return (2 * math.pow(math.e, math.log(GROWTH_FACTOR) * years))
      .round()
      .toInt();
}

/*
html

After <input type="number" id="years" value="5" min="1" max="30"> Years
<input type="button" id="submit" value="Calculate"/>
<br/>Number of rabbits: <label id="output"></label>

css

body {
  color: white;
  font-size: 30px;
}

input, select, textarea {
font-size: 100%;
}
*/
/*
import 'dart:html';

InputElement task;
UListElement list;

main() {
  task = querySelector('#task');
  list = querySelector('#list');
  task.onChange.listen((e) => addItem());
}

void addItem() {
  var newTask = LIElement();
  newTask.text = task.value;
  task.value = '';
  list.children.add(newTask);
}
*/

/*
html
  
  <input id="task" type="text" placeholder=
  "What do you want to do?"/>
  <ul id="list"/>
  
css

body {
  color: white;
  font-size: 30px;
}

input, select, textarea {
font-size: 100%;
}
*/
