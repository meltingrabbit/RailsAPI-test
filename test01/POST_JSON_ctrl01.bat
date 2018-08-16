@echo off


curl http://localhost:3000/ctrl01 -X POST -H "Content-Type:application/json" ^
	-d '{ ^
		"user":{ ^
			"name":"çÇã¥ ëÒç∆", ^
			"age":34,          ^
		}, ^
		"disc":"Ç†Ç†Ç†Ç†" ^
	}'




echo.

pause

