package main

//#cgo CFLAGS: -I.
//#cgo LDFLAGS: -L. -ltest
//#include "test.h"
import "C"

import (
	"fmt"
)

func main() {
	fmt.Println("1+1 =", C.x(1))
}
