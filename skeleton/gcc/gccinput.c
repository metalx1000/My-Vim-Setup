int getInput(){
  //#include <string.h> is needed
  /*Set Buffer size*/
  int buff = 256;

  /* A nice long string */
  char string[buff];                               
  printf( "Please enter your name: " );
  /* notice stdin being passed in */
  fgets ( string, buff, stdin );           

  /*Remove newline Charactor from input*/
  string[strlen(string)-1] = 0;
  printf( "Hello %s. test.\n", string );

}


