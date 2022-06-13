#include "myhead.h"
#include <string.h>


Status CreateVin(VIN *dest, const char *src)
{
	size_t tempLen = strlen(src);
	if(tempLen != VINLEN)
		return FALSE;
	
	// strncpy(*dest[1], src, VINLEN); 是错误的
	// strncpy(*(dest+1), src, VINLEN); 是错误的
	strncpy(*dest+1, src, VINLEN);

	*dest[0] = (char)tempLen;
	*dest[18] = '\0';

	return TRUE;
}

Status GetYear(void *yearArray, HashElem *vinAge, char ageFlag)
{
	HashElem *tempArray = (HashElem *)yearArray;
	
	if(ageFlag>='A' && ageFlag<='H'){
		*vinAge = tempArray[ageFlag-56];
		return TRUE;		
	}
	else if(ageFlag>='1' && ageFlag<='9'){
		*vinAge = tempArray[ageFlag-49];
		return TRUE;
	}
	else if(ageFlag>='J' && ageFlag<='N'){
		*vinAge = tempArray[ageFlag-57];
		return TRUE;
	}
	else if(ageFlag == 'p'){
		*vinAge = tempArray[ageFlag-58];
		return TRUE;
	}
	else
		return FALSE;
}

size_t VinLength(VIN vin)
{ // 返回VIN的长度
	return (size_t)vin[0];
}

CarModel GetModel(VIN vin)
{
	if(vin[1] != 'W')
		return MODELFALSE;
	if(vin[2] == 'P')
		return PORSCHE;
	else if(vin[2] == 'V')
		return VW;
	else if(vin[2]=='A' || vin[2]=='U')
		return AUDI;
	else
		return MODELFALSE;
}

CarType GetType(int charModel, VIN vin) 
{
	switch(charModel){
		case PORSCHE:
		case VW:
		case AUDI:
		default:
	}
}
