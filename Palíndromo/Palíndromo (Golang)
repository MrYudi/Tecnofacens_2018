package main

import (
"fmt"
"regexp"
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
	input = space.ReplaceAllString(input,"")
	for i := 0; i < len(input)/2; i++ {
		if input[i] != input[len(input)-i-1] {
			return false
		}
	}
	return true
}

func main() {
	fmt.Println(isPalindromeWithoutSpace("anna"))
	fmt.Println(isPalindromeWithoutSpace("not a palindrome"))
	fmt.Println(isPalindromeWithoutSpace("o oa  aoo"))
	fmt.Println(isPalindromeWithSpace("o oa  aoo"))
	fmt.Println(isPalindromeWithSpace("o oa  	aoo"))
}
