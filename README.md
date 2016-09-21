# docker-redis-din-port
Container to run redis under any by environment parameter.

# Usage:

$> docker run -e 'PORT=12345' -p 12345:12345 sebero/redis-din-port

$> redis-cli -h localhost -p 12345

Or setup your compose yml:

```
version: '2'
services:
    redis01:
        image: sebero/redis-din-port
        environment:
            PORT: 6333
        ports:
            - "6333:6333"

```