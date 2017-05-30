int yesno(){
  char answer;
  printf("Would you like to continue(y/n)?\n");
  scanf(" %c", &answer);
  printf("You answered %c\n", answer);
  while (answer == 'y' || answer == 'Y'){
    printf("Success!");

    printf("\nDo you want to try again(y/n)?\n");
    scanf(" %c", &answer);
    printf("Your answer is %c\n", answer);

  }
  printf("GoodBye!\n");
  return 0;
}

