# 	wekan

一个团队，往往是从一个共同的灵感，共同的目标作为起点。

so，以一个敏捷看板，作为一切的开端。

### 项目地址
- https://github.com/wekan/wekan
- https://github.com/wekan/wekan/blob/master/docker-compose.yml


### 文件
- docker-compose.yml 部署配置。
- startup.sh 启动脚本。
- wekan.env 配置文件。

#####   如何使用 

    $ sh starup.sh

#####   新建用户 

-  https://github.com/wekan/wekan/wiki/Adding-users


#####   忘记密码 

-  https://github.com/wekan/wekan/wiki/Forgot-Password


#####  备份、还原数据 

-  https://github.com/wekan/wekan/wiki/Backup

-  If really necessary, repair MongoDB: https://github.com/wekan/wekan-mongodb/issues/6#issuecomment-424004116

1. Going inside containers:
        a) Wekan app, does not contain data
             docker exec -it wekan-app bash
        b) MongoDB, contains all data
             docker exec -it wekan-db bash
2. Copying database to outside of container:
          docker exec -it wekan-db bash
          cd /data
          mongodump
          exit
          docker cp wekan-db:/data/dump .
3. Restoring database
          1) Stop wekan
                 docker stop wekan-app
          2) Go inside database container
                 docker exec -it wekan-db bash
          3) and data directory
                 cd /data
          4) Remove previos dump
                 rm -rf dump
          5) Exit db container
                 exit
          6) Copy dump to inside docker container
                 docker cp dump wekan-db:/data/
          7) Go inside database container
                 docker exec -it wekan-db bash
          8) and data directory
                 cd /data
          9) Restore
                 mongorestore --drop
          10) Exit db container
                 exit
          11) Start wekan
                 docker start wekan-app


### todo

1. 数据导出命令： docker exec -it wekan-db /usr/bin/mongodump --port=27017 --db=wekan -o /dump/wekan-20190302
2. 数据导入命令： docker exec -it wekan-db /usr/bin/mongorestore --port=27017 --db=wekan3 /dump/wekan-20190302/wekan
