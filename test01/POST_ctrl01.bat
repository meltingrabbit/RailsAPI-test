@echo off


curl http://localhost:3000/ctrl01 -X POST ^
	-d "user[name]=高橋 拓哉" ^
	-d "user[age]=1" ^
	-d "disc[d]=あああいあいあ"


echo.

pause

