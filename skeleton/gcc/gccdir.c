#include <dirent.h>
#include <stdio.h>

int dir();

int main(void){
  dir();
  return(0);
}

int dir(){
  DIR           *d;
  struct dirent *dir;
  d = opendir(".");
  if (d)
  {
    while ((dir = readdir(d)) != NULL)
    {
      printf("%s\n", dir->d_name);
    }

    closedir(d);
  }

  return(0);
}
