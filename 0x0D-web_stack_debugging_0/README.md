# 0x0D. Web stack debugging #0


```bash
docker run -p 8080:80 -d -it holbertonschool/265-0
docker ps
docker exec -ti 43b63afc7588 /bin/bash

/etc/init.d/apache2 start

curl 0:8080
```

