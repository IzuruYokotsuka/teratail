#include <stdio.h>

int main(void){
  char number1[5]="12345";
  char number2;
  int i;
  printf("number1:%s\n",number1);
  for(i=0;i<2;i++){
    number2=number1[i];
    number1[i]=number1[4-i];
    number1[4-i]=number2;
  }
  printf("number1:%s\n",number1);
  return 0;
}