@echo off


curl http://localhost:3000/ctrl01 -X POST -H 'Content-Type:application/json' --data-urlencode '{"user":{"name":"ëÒç∆","age":34,},"disc":"11"}'


curl http://localhost:3000/ctrl01 -X POST -H "Content-Type:application/json" -d '{"user":{"name":"112","age":34,},"disc":"11"}'



curl http://localhost:3000/ctrl01 -X POST -H 'Content-Type:application/json' -d '{"user":{"name":"sq","age":34,},"disc":"11"}'



chcp 65001
curl http://localhost:3000/ctrl01 -X POST -H 'Content-Type:application/json' --data '{"user":{"name":"Ç†Ç†","age":34,},"disc":"11"}'



curl http://localhost:3000/ctrl01 -X POST -H 'Content-Type:application/json' --data-binary '{"user":"Ç†","disc":"11"}'


curl http://localhost:3000/ctrl01 -X POST ^
	-d "age=1" ^
	-d "agewww=1" ^
	-d "name=Ç†"



curl http://localhost:3000/ctrl01 -X POST ^
	-d "user[name]=aaa" ^
	-d "user[age]=1" ^
	-d "disc=fds"







echo.

pause




curl http://localhost:3000/ctrl01 -X POST \
	-d "user[name]=çÇã¥ ëÒç∆" \
	-d "user[age]=1" \
	-d "disc=222"


