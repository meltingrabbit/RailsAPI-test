@echo off


curl http://localhost:3000/ctrl01 -X POST ^
	-d "user[name]=çÇã¥ ëÒç∆" ^
	-d "user[age]=1" ^
	-d "disc[d]=Ç†Ç†Ç†Ç¢Ç†Ç¢Ç†"


echo.

pause

