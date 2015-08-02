# vagrant-go
This help you to setup a web development or testing enviroment for Go lang.

Just clone the repository and run
```ssh
vagrant up
```
This install:
- Apache
- Git
- Go

And use the ip 192.169.106.114 (You can changes this)

The GOPATH is the apache server path /var/www, for default apache make the html directory,
for Go this path is used to save the packages and sources that are downloaded with
```ssh
go get <package-name>
```

Remember when you run the go server this run on the port 8080
```ssh
http://192.169.106.114:8080
```
---
### Example

If you want to test go just make the file hello.go
```go
package main

import "fmt"

func main() {
    fmt.Println("Hello world!")
}
```
and then
```ssh
go run hello.go
```
