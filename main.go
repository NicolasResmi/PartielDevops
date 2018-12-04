package main

import (
	"fmt"
	"log"
	"net/http"
	"os"
	"wsf/devops/handler"
)

func main() {

	port := os.Getenv("PORT")
	if port == "" {
		port = "8080"
	}

	myHandler := handler.NewHandler()

	server := &http.Server{
		Addr:    ":" + port,
		Handler: myHandler,
	}

	fmt.Println("test")
	fmt.Println("Server is runnin at", port)

	log.Fatal(server.ListenAndServe())
}
