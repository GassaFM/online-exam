package main

import (
	"fmt"
	"math/rand"
	"os"
)

const (
	n = 5000
	k = 2000
	x = 100
)

func main() {
	var res int
	rand.Seed(12345)
	for attempt := 0; attempt < 3; attempt++ {
		for position := 0; position < n; position++ {
			fmt.Printf("%c", "01"[rand.Intn(2)])
		}
		fmt.Println()
		os.Stdout.Sync()
		fmt.Scanf("%d", &res)
		fmt.Fprintf(os.Stderr, "%5d", res)
	}
	fmt.Fprintf(os.Stderr, "\n")
}
