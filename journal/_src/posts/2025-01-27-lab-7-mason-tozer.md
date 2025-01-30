    Title: Lab 7 Mason Tozer
    Date: 2025-01-22T00:35:04
    Tags: Lab7, CS2613, Racket, Recursion, Lists
# CS 2613 Lab 7: Working with Lists Racket
As usual, we had some pre-lab work from the end of previous lab, which was asking us to read through [sections 5.2, 5.3, and 5.4](https://www.cs.unb.ca/~bremner/teaching/cs2613/books/FICS/Lists.html) of our class text , *A Functional Introduction to Computer Science*. 

For our seventh lab in CS 2613, we start off with a class discussion on whether we had any questions or concerns with the past Assignment 1, or the upcoming Assignment 2. We then created a *L07* folder within our local repository to be used a work space for the class, and to be pushed to our CourseGit at the end of the lab. 

We were then asked to form groups of 2 to 3, and to work together on coding [exercise 17](https://www.cs.unb.ca/~bremner/teaching/cs2613/books/FICS/Lists.html#%28part._.Representing_sets_using_ordered_lists%29) in the FICS. In exercise 17, we are ask to:

	Develop a general template for structural recursion on one list parameter and one natural number parameter. Use it to write the Racket function keep-first, which consumes a list lst and a natural number n and produces the list consisting of the first n elements of lst. If n is greater than the length of lst, then all of lst is produced. [Taken from the text FICS]

The objective of this exercise was to create the *keep-first* function, and this was to help us work on the skill of structural recursion, but now with two parameters. We were given one test case to help test our function as we developed it, but more tests were required to fully test the function and to check edge cases. 

Next, we started working on the intersection of two ordered lists. We were given a starter template, and were asked to use / implement it into [exercise 20](https://www.cs.unb.ca/~bremner/teaching/cs2613/books/FICS/Lists.html#%28part._.Representing_sets_using_ordered_lists%29) from the FICS. This function is designed to return the *intersection* of two lists, which means to return a 3rd new list that contains every value that appears in **both** list A and list B which are passed in as parameters. 

Lastly, we worked through [exercise 24](https://www.cs.unb.ca/~bremner/teaching/cs2613/books/FICS/Lists.html#%28part._.List_abbreviations%29) of the FICS. This exercise has us working with the built in *append* function, as well as the *cons-all* that we wrote previously in lab 5 (now lab 6 due to the snow day).

We were asked to read about [signatures](https://docs.racket-lang.org/htdp-langs/advanced.html#%28part._advanced-signatures%29) and to read [section 6](https://www.cs.unb.ca/~bremner/teaching/cs2613/books/FICS/Functional_Abstraction.html) of the text FICS
The concept of multiple parameter recursion is a familiar skill from both CS 1083 Java ii, and CS 2383 Data Structures and Algorithms. As well, though a small connection, the concept of *intersections* has show in many of my other courses, such as stats and discrete structures. A new skill we practiced today in lab was working with *intersections* specifically within Racket. I found the last exercise to be a bit tricky, and I'll need to continue working on it on my own time.

<!-- more -->

