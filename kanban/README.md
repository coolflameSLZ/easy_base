# 	wekan

一个小团队，往往是从一个共同的灵感，一个共同的目标作为起点。

所以，我以一个敏捷看板，作为一切的开始。



### 文件

- docker-compose.yml 是快速部署配置。
- startup.sh 为启动脚本。
- wekan.env 将配置隔离。


### todo

1. 数据导出命令： docker exec -it wekan-db /usr/bin/mongodump --port=27017 --db=wekan -o /dump/wekan-20190302
2. 数据导入命令： docker exec -it wekan-db /usr/bin/mongorestore --port=27017 --db=wekan3 /dump/wekan-20190302/wekan
