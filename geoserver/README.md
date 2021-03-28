
# 	geoserver


### 项目地址
- https://github.com/kartoza/docker-geoserver


### 文件
- docker-compose.yml 部署配置。
- startup.sh 启动脚本。
- gitlab.env 配置文件。

#####   如何使用 

    $ sh starup.sh


#####   说明
    
    ci 流水线使用 gitlab ci, 编译容器与 gitlab容器隔离。
    使用gitlab ci runner 独立部署后，注册到 gitlab 上。

    