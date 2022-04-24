# 基于django3的ldap管理平台
> python3.7.9


* [x] 多ldap组织和用户管理
* [x] 用户自行重置或修改密码
* [ ] 集成本地用户支持单点登录

# ldap配置前提
```
# 条目 1: ou=Group,dc=domain,dc=com
dn: ou=Group,dc=domain,dc=com
objectclass: top
objectclass: organizationalUnit
ou: Group


# 条目 1: ou=People,dc=domain,dc=com
dn: ou=People,dc=domain,dc=com
objectclass: top
objectclass: organizationalUnit
ou: People
```

# 简单安装
**参考example.conf 在根目录创建online.conf 修改所需要的配置**
```shell
# 依赖安装
pip install -r requirements.txt
# 库迁移
python manage.py makemigrations 
python manage.py migrate 
# 管理用户创建
python manage.py createsuperuser
# 启动
python3 manage.py runserver 0.0.0.0:8888
```


## screenshots 


