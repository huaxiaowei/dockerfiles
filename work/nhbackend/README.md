# 格式
```
docker stack deploy --with-registry-auth -c <compose-file-path> <stack-name>
```
# 执行
```
docker stack deploy --with-registry-auth -c ./docker-compose.yml nhbackend
```
# 删除
```
docker stack rm nhbackend
```