#!/usr/bin/env python3
# -*- coding: utf-8 -*-

class Vin(object):
    vinYear = {
        '1':2001, '2':2002, '3':2003, '4':2004, '5':2005,
        '6':2006, '7':2007, '8':2008, '9':2009, 'A':2010,
        'B':2011, 'C':2012, 'D':2013, 'E':2014, 'F':2015,
        'G':2016, 'H':2017, 'J':2018, 'K':2019, 'L':2020,
        'M':2021, 'N':2022, 'P':2023
    }
    
    def __init__(self, vinNum):
        if len(vinNum) != 17:
            raise ValueError('Bad vin != 17')
        
        if Num[9] not in vinYear:
            raise ValueError('Year is not defined!')
        self.__year = vinYear[Num[9]]
        
    @property
    def Year(self):
        return self.__year
    @Year.setter    
    def Year(self, value):
        self.__year = value
     ''' 如果想使用len()函数来获取自己类型的长度，就开启这个特殊方法。这里没有使用
    def __len__(self):
        return 17
    '''

if __name__ == '__main__':
    usrInput = input('please input your vin code: ')
    try:
        myVin = Vin(usrInput.upper())
    except ValueError as e:
        print('ValueError:', e)
    

