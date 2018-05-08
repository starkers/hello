package main

import (
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "olleh")
	})

	fmt.Print("serving stuff\n")
	http.ListenAndServe(":8080", nil)
}
