# simple-kong-plugin
Testing Lua plugin without creating Luarocks with DBless configuration. This Lua will generate header from environment variables.


### Running
- Run all of the containers
```
make up
```

- Try to curl the service via Kong
```
curl http://localhost:8000/echo/grpc/foo -vvv
*   Trying ::1...
* TCP_NODELAY set
* Connected to localhost (::1) port 8000 (#0)
> GET /echo/grpc/foo HTTP/1.1
> Host: localhost:8000
> User-Agent: curl/7.64.1
> Accept: */*
> 
< HTTP/1.1 200 OK
< Content-Type: text/plain; charset=utf-8
< Content-Length: 65
< Connection: keep-alive
< Date: Tue, 12 Apr 2022 05:28:38 GMT
< Bye-World: this is on the response, owned by foundation from gtf
< X-Kong-Upstream-Latency: 3
< X-Kong-Proxy-Latency: 1
< Via: kong/2.4.1
< 
* Connection #0 to host localhost left intact
4ed0fba0-0db7-45a6-a540-4a41593bdcd8:from server:foo:success:true
```
