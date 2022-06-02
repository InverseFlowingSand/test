#include <string.h>

Status CreateVin(VIN vin, const char *src)
{ // 生成一个其值等于src的车架号
	int i;
	
	size_t tempLen = strlen(src);
	
	if(tempLen != VINLEN)
		return ERROR;
	
	vin[0] = tempLen;
	for(i=1; i<=vin[0]; i++)
		vin[i] = *(src+i-1);
	vin[18] = '\0';
	return OK;
}

unsigned int VinLength(VIN vin)
{ // 返回车架号T的长度
	return (unsigned int)vinString[0];
}


