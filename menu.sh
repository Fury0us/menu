#!/bin/bash
#the goal of this template is to streamline the process
#of menu creation in BASH
option_one() {
PS3=("#opt1: ")
var1=("one-1" "one-2" "one-3" "main")
select var in "${var1[@]}";do
case $var in
	"one-1")
	echo "option one-1"
	option_one
	;;
        "one-2")
        echo "option one-2"
        option_one
	;;
        "one-3")
        echo "option one-3"
        option_one
	;;
	"main")
	main_menu
	;;
	esac
done
main_menu
}
option_two() {
PS3=("#opt2: ")
var2=("two-1" "two-2" "two-3" "main")
select var in "${var2[@]}";do
case $var in
        "two-1")
        echo "option two-1"
        option_two
	;;
        "two-2")
        echo "option two-2"
        option_two
	;;
        "two-3")
        echo "option two-3"
        option_two
	;;
	"main")
	main_menu
	;;
        esac
done
main_menu
}
option_three() {
PS3=("#opt3: ")
var3=("three-1" "three-2" "three-3" "main")
select var in "${var3[@]}";do
case $var in
        "three-1")
        echo "option three-1"
        option_three
	;;
        "three-2")
        echo "option three-2"
        option_three
	;;
        "three-3")
        echo "option three-3"
        option_three
	;;
	"main")
	main_menu
	;;
        esac
done
main_menu
}







main_menu() {
#above is the main_menu function, this function calls to the
#main menu of the template, as you could imagine
#the brackets are cruicial in the syntax
#and never forget to close with } at the end!
#the menu script begins....
PS3=("#main: ")
#the PS3 variable determines what will be before
#the user output in the menu, this can be anything.
#in this example, its just #:
menu=("one" "two" "three")
#here we declare a variable named menu, and give it some
#parameters, the parameters can be pretty extensive.
#here we are just feeding in three menu options, one, two, and three.
select m in "${menu[@]}"; do
#here weve started a select loop to begin our case statement
#this is the most efficient way ive found to do this
#the variable after select can be any character
#SYNTAX IS CRUCIAL
case $m in
#and with that, weve started our case statement, and may
#begin listing out our menu options!!
	"one")
	option_one
#the first menu option, always to be closed with ) when
#inside a case statement/select loop menu
#for the sake of ease we will create sub-menus within
#other defined functions, but more on that later
	;;
# ;; is to break out of the one menu option and continue on to two
	"two")
	option_two
	;;
	"three")
	option_three
	;;
#dont forget to close out of your case statement and
#the select loop!
	esac
done
}
#esac to close case done to close select loop, always put } after to
#CLOSE THE FUNCTION!!!
#finally, and most importantly, always call to the
#main_menu function when finished
main_menu
#when you are done viewing the code, simply type: bash menu.sh (no sudo required) to view the menu!
#you can customize and add options as you see fit, this is just a very simple template!
