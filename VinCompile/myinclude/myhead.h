#ifndef MYHEAD_H

#define MYHEAD_H
#define VINLEN 17
#define HASHMAX 23

typedef int Status;
typedef char VIN[VINLEN+2]; //0号单元存放车架号的长度，从1开始，结尾还有个'\0'。
typedef int HashElem;

enum{
	FALSE,
	TRUE,
};

/*车型表*/
enum{
	CARFALSE, //错误车型返回0
	CAYENNE, //卡宴
	TOUA, //途锐
	Q7, //奥迪Q7
	MACAN, //玛卡
	PANAMERA, //帕拉梅拉
	PHAETON, //辉腾
	BOXSTER, //博克斯特
	CAYMAN, //卡曼
	CARRERA, //卡雷拉
	TARGA, //塔噶
	TURBO, //Turbo
	GTS, //GTS
};

/*车系表*/
enum{
	MOLDFALSE, //错误车系返回0
	PORSCHE, //保时捷
	VW, //德国大众
	AUDI, //奥迪
};

/* 函数内部做了个数的限制。
 * 传入参数：全部
 * 传出参数：0
 * 返回值：VIN码创建成功就返回TRUE，错误就返回FALSE
 */
Status CreateVin(VIN *dest, const char *src);

/* 由于年款不是太多，使用了简易的Hash表。
 * 传入参数：void *yearArray、char ageFlag
 * 传出参数：HashElem *vinAge
 * 返回值：VIN码年款正确就返回TRUE，错误就返回FALSE
 */
Status GetYear(void *yearArray, HashElem *vinAge, char ageFlag);


#endif
