#include <stdio.h>
#include "myhead.h"

int main(void){
	static HashElem years[HASHMAX] ={
		2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010,
		2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020,
		2021, 2022, 2023
	}
	
	char usrInput[] = "WP1AB2953HLB52114";
	
	VIN vin;
	HashElem vinYear;
	
	if(CreateVin(vin, usrInput))
		printf("Create VIN is successful!\n");
	
	if(GetYear(years, &vinYear, vin[10]))
		printf("This VIN year is: %d\n", vinYear)
	
	return 0;
}