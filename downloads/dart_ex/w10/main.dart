// 導入html程式庫 以至於能使用超文件
import "dart:html";

// 攝氏溫度的計算為= 5/9 ( 華氏 − 32)
// 定義一個 攝氏轉華氏溫度的 算式函式
CtoF(num c){
return c*9/5 + 32;
}

// 定義一個 華氏轉攝氏溫度的 算式函式
FtoC(num f){
return (f - 32)*5/9;
}

// main為最先執行之主程式
main() {
    //使用表單取得輸入溫度值
    InputElement tempInput = querySelector("#temp");
    querySelector("#submit").onClick.listen((e) => convert(tempInput.value));
}

convert(String data){
  // 宣告 len 整數變數, 準備設為各字串的長度
  int len;
  // 宣告 var 變數 type, 準備設為各字串最後一個字元, 可能為 C 或 F
  var type;
  // 宣告 var 變數 number, 準備設為各字串中的數字
  var number;
  // 準備將轉換結果顯示在 output Label 區
  LabelElement output = querySelector("#output");
  // 直接取得單一輸入 data 字串
  len = data.length;
  // 取得各筆資料的最後一個字元
  type = data[len-1];
  number = data.substring(0, len-1);
  // 將字串轉為數字
  number = int.parse(number);
  if (type == "C" || type == "c"){
     output.innerHtml = "攝氏 $number 度 = 華氏 ${CtoF(number).toStringAsFixed(2)} 度";
  } else if ((type == "F" || type == "f")){
     output.innerHtml = "華氏 $number 度 = 攝氏 ${FtoC(number).toStringAsFixed(2)} 度";
  } else {
     output.innerHtml = "請輸入數字加上 C 或 F!";
  }
} // convert