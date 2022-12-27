appNAme=
branch=
remoteName=

cmt:
	git add .
	git commit -am '${cmt}'

push:
	git pull origin master
	git push origin master

gcb:
	git checkout -b "${b}"

