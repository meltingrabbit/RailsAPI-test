@echo off


curl http://localhost:3000/ctrl01 -X POST ^
	-d "user[name]=���� ���" ^
	-d "user[age]=1" ^
	-d "disc[d]=��������������"


echo.

pause

