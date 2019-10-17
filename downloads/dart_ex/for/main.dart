int i;
int sum;
  
void main() {
  sum = 0;
  for ( i = 0; i <= 10; i++) {
    print(i);
    sum += i;
  }
  print("sum=$sum");
}
