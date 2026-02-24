
















#!/bin/bash

#check for non-existent file,exit status will be 2
ls somefile
echo   "status: $?"

#creat file,and do again, exit status will be 0
touch somefile
ls somefile
echo   "status:$?"

#remove file to clean up
rm somefile

