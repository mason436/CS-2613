Title: Lab 22 Mason Tozer
    Date: 2025-03-02T00:35:04
    Tags: Lab22, CS2613, GNUOctave
# CS 2613 Lab 22: Working with images and 
As usual, we had some pre-lab work from the end of previous lab, which was asking us to read through [sections 5.1 and 5.2](https://www.cs.unb.ca/~bremner/teaching/cs2613/books/FICS/Lists.html) of our class text. 

For our sixth lab in CS 2613 (though, we went over content from Lab 5 due to the [snow day](https://weatherspark.com/h/d/27856/2025/1/20/Historical-Weather-on-Monday-January-20-2025-in-Fredericton-New-Brunswick-Canada#metar-05-16) ) we started with the usual procedure of creating a new folder within our local repository as a workspace for today's exercises. This local repository will be pushed to our course git at the end of the lab.

We were then asked to complete [exercise 13](https://www.cs.unb.ca/~bremner/teaching/cs2613/books/FICS/Lists.html) from our class text "A Functional Introduction to Computer Science". In exercise 13, we were asked to:
- Write the Racket function substitute, which consumes two Racket values x and y and a list lst, and produces a version of lst with every occurrence of x replaced with y. Your function should work for arbitrary values that can be compared for equality (not just numbers). As an example, (substitute 3 "three" ([list](http://docs.racket-lang.org/htdp-langs/beginner-abbr.html#%28def._htdp-beginner-abbr._%28%28lib._lang%2Fhtdp-beginner-abbr..rkt%29._list%29%29) "four" 3 4 "three" 3)) should produce ([list](http://docs.racket-lang.org/htdp-langs/beginner-abbr.html#%28def._htdp-beginner-abbr._%28%28lib._lang%2Fhtdp-beginner-abbr..rkt%29._list%29%29) "four" "three" 4 "three" "three"). (Taken from section 5.2 in the FICS text)

The point of us doing this exercise was to build on our knowledge of lists within Racket, as well as furthering our skills with structural recursion on which we have been working on in previous labs. 

After completing this exercise, we started on exercise 15 of the FICS test. This exercise had us create a program that takes in a list, and creates a new list that has "all but the rightmost occurrence of each value removed." We were told to use the built in *member?* function, which is a new function for us within our course. Lastly, we wrote a *cons-all* which was related to exercises 23-25 in the FICS.

Our work today with lists, and continued work with recursion, reminds me of the similar work we did in the two java courses, as well as learning about linked listed in CS 2383 Data Structures and Algorithms. We practiced with the new function *member?*, and completed more exercises from the FICS, which is always great practice for improving our Racket skills. I found/ have been finding the later exercises in the FICS on Racket more challenging to grasp, but of course that is too be slightly expected and I plan to spend more time practicing Racket before our quiz. Overall, it was a good lab of practicing our Racket skills, and the readings in the FICS were informative to our learning.  I am enjoying Racket somewhat, but I am also excited to start working in JS and Python as those will relate more directly to the skills I'll need/ use after I graduate next year.


<!-- more -->
