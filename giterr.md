git config branch.master.remote origin
git config branch.master.merge refs/heads/master

git pull

显示当前所有远程库的详细信息
git remote -v

git config -e 打开config文件
文件位于.git /config
git remote set-url --add origin就是往当前git项目的config文件里增加一行记录

修改origin 1,2,3
1,git remote origin set-url [url]
2,git remote rm origin
	git remote add origin [url]
3.直接修改config文件


查看用户名和邮箱
git config user.name
git config user.email

修改自己的用户名和邮箱地址
git config --global user.name "XXX"
git config --global user.email "XXX"

修改密码
git config --global credential.helper store (输入这个命令后,以后只要在输入一次用户名密码)


git pull 远程主机名 远程分支名：本地分支名

(分号可以省略)
e:
git pull origin master:dev

==
git fetch origin master:dev
git merge dev
