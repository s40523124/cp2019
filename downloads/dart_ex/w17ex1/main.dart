KGtoLB(num k){
return k* 2.2046226218;
}
LBtoKG(num l){
return l*1/ 2.2046226218;
}
main() {
    int len;
    var type;
    var number;
  List temp = ["25k", "30l", "56l", "14k", "68l", "198k"];
    for (var data in temp) {
        len = data.length;
    type = data[len-1];
    number = data.substring(0, len-1);
    number = int.parse(number);
    if (type == "KG"){
      //print("KG: $type, $number");
      print("公斤 $number 公斤 = 英鎊 ${KGtoLB(number)} 英鎊");
    }else{
      //print("LB: $type, $number");
      print("英鎊 $number 英鎊 = 公斤 ${LBtoKG(number)} 公斤");
    }
      
  } // for
} // main
