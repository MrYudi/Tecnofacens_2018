package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"regexp"
	"strings"
)

func isPalindromeWithoutSpace(input string) bool {
	for i := 0; i < len(input)/2; i++ {
		if input[i] != input[len(input)-i-1] {
			return false
		}
	}
	return true
}
func isPalindromeWithSpace(input string) bool {
	space := regexp.MustCompile("[ ]|[\t]|[\n]")
	input = space.ReplaceAllString(input, "")
	for i := 0; i < len(input)/2; i++ {
		if input[i] != input[len(input)-i-1] {
			return false
		}
	}
	return true
}

func main() {

	log.Println("Enter text: ")
	reader := bufio.NewReader(os.Stdin)
	for {
		fmt.Print("-> ")
		text, _ := reader.ReadString('\n')

		text = strings.Replace(text, "\n", "", -1)
		text = strings.Replace(text, "\r", "", -1)

		boolPalindromo := isPalindromeWithoutSpace(text)
		if boolPalindromo {
			log.Println("É um palindromo")
		} else {
			log.Println("Não é um")
		}

	}
}
