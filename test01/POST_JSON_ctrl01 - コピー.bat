@echo off


curl http://localhost:3000/ctrl01 -X POST -H 'Content-Type:application/json' --data-urlencode '{"user":{"name":"���","age":34,},"disc":"11"}'


curl http://localhost:3000/ctrl01 -X POST -H "Content-Type:application/json" -d '{"user":{"name":"112","age":34,},"disc":"11"}'



curl http://localhost:3000/ctrl01 -X POST -H 'Content-Type:application/json' -d '{"user":{"name":"sq","age":34,},"disc":"11"}'



chcp 65001
curl http://localhost:3000/ctrl01 -X POST -H 'Content-Type:application/json' --data '{"user":{"name":"����","age":34,},"disc":"11"}'



curl http://localhost:3000/ctrl01 -X POST -H 'Content-Type:application/json' --data-binary '{"user":"��","disc":"11"}'


curl http://localhost:3000/ctrl01 -X POST ^
	-d "age=1" ^
	-d "agewww=1" ^
	-d "name=��"



curl http://localhost:3000/ctrl01 -X POST ^
	-d "user[name]=aaa" ^
	-d "user[age]=1" ^
	-d "disc=fds"







echo.

pause




curl http://localhost:3000/ctrl01 -X POST \
	-d "user[name]=���� ���" \
	-d "user[age]=1" \
	-d "disc=222"


