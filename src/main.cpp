#include <stdio.h>

void usage(char* argument){ printf("Usage: %s \n",argument); }

int main(int argc, char* argv[]){
	if(argc != 1) { usage(argv[0]); return 1; }

	printf("TEST\n");

	return 0;
}
