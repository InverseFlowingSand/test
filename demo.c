#include <stdio.h>

#define OK 1
#define TRUE 1
#define ERROR 0
#define FALSE 0

typedef int ElemType;
typedef int Status;

typedef struct Node
{
	ElemType data;
	struct Node *next;
}Node;
typedef struct Node *LinkList;

int main(void)
{
	printf("hello git!\n");
	return 0;
}
