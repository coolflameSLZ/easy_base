# 	gitlab

gitlab 无需多解释，

使用 sameersbn 镜像，比gitlab 官方镜像更加易用。

暂不考虑分布式部署，使用 docker restart ，配合 gitlab本身的 数据备份机制。

保证99%可用性，数据不丢即可。

### 项目地址
- https://github.com/sameersbn/docker-gitlab
- https://github.com/sameersbn/docker-gitlab/blob/master/docker-compose.yml


### 文件
- docker-compose.yml 部署配置。
- startup.sh 启动脚本。
- gitlab.env 配置文件。

#####   如何使用 

    $ sh starup.sh


#####   说明
    
    ci 流水线使用 gitlab ci, 编译容器与 gitlab容器隔离。
    使用gitlab ci runner 独立部署后，注册到 gitlab 上。

    