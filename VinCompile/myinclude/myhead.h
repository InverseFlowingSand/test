#ifndef MYHEAD_H
#define MYHEAD_H

#define OK 1
#define ERROR 0
#define VINLEN 17

typedef int Status;
typedef char VIN[VINLEN+2]; //0号单元存放车架号的长度，从1开始，结尾还有个'\0'。

Status CreateVin(VIN *vin, const char *src);
unsigned int VinLength(VIN vin);


#endif
