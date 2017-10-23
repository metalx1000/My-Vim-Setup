#include<stdlib.h>
#include<stdio.h>

int main(){
  char msg1[] = "World";
  //printf("Content-type: text/plain\n\n");//for cgi-bin
  printf("Hello %s\n",msg1);
  system("ls /");
  return 0;
}
