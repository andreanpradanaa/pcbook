package main

import "fmt"

type Laptop struct {
	Name string
}

func main() {
	laptop := &Laptop{
		Name: "ASUS",
	}

	otherLaptop := &Laptop{}
	otherLaptop.Name = "TEST"

	fmt.Println(&laptop, "", laptop.Name)
	fmt.Println(&otherLaptop, "", otherLaptop.Name)
}
