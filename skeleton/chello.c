#include<stdlib.h>
#include<stdio.h>

int main(){
  //printf("Content-type: text/plain\n\n");//for cgi-bin
  printf("Hello World\n");
  system("ls /");
  return 0;
}
