    Title: Lab 8 Mason Tozer
    Date: 2025-01-08T00:35:04
    Tags: Lab2, CS2613, Racket, Frog, Git

# CS 2613 Lab 2: Finishing Up With Git and Starting off with Racket

For our second lab in CS 2613, we continued where we left off from the first lab. We were given some pre-lab instructions to check and ensure that we understood the first lab correctly, and were given a reading on how to write [good git commit messages ](https://git-scm.com/book/en/v2/Distributed-Git-Contributing-to-a-Project#_commit_guidelines). 

We started our second lab off by first finishing up our tutorial in git. We learned about the _git grep_ command, which is a fast and useful way to find strings within our git repositories. As well, we learned about the *git diff --cached* command, which will show us what has been modified since our last commit, before we commit the new changes. Our final lesson on the basics of Git discussed cleaning up generated files, which are files created by some tool or software, and can add some deceitful changes in our project's commits history. It is best practice to 'clean' up these files, and we can do so by running the Racket command  *raco frog --clean*. We then used the previously learnt *git diff* command to observe and learn what the frog clean command performs. We observed that it deleted the generated files for us, and saved us from having to manually delete each file, and avoid possible deleting an incorrect file. We then shared our best commit message with a neighbour, and gave some constructive feedback if we had any.

After completing our discussion on git, we then started to learn the basics of coding with the programing language _Racket_.

-          [Racket](https://docs.racket-lang.org/guide/intro.html) is a beginner friendly, high level, programming language. Racket is used mostly for scripting, research, and for teaching computer programming as it is a very approachable language.

We will mostly be following the text [_A Functional Introduction To Computer Science_](https://lms.unb.ca/d2l/home/257026) as a guide for learning Racket. 

The first few exercises in Racket given to us were covering some of the basics, such as a helloworld program, and some basic arithmetic. We were given some basic code and in groups of 2-3, we were asked to try and identify what was wrong about each line of code and to try and fix it before trying it in DrRacket. At the end, we were given some reading to do before the next lab, like reading about Syntax and Semantics, the first two sections on the stepper function with DrRacket,  and check-expects, which are all found in the text [_A Functional Introduction To Computer Science_](https://lms.unb.ca/d2l/home/257026). We are also asked three questions;
- What is a *remote* ?
		- A remote in git is a repository that can be accessed by multiple people, and it is saved in one generalized location.
- What is *merging* ?
		- Merging within git is when two or more branches are combined into one.
- What is a *conflict* ?
		- A conflict is when two branches of a project have different changes made to the same file, which usually only happens when programming in a team environment/ with two or more developers.

Some concepts learnt today are familiar from other courses, such as the use of git, which was used in my past software engineering class, and the idea of basic programming like creating the helloworld program, which was done in CS1073. But Racket is a whole new language and skill set for me, and I find the syntax has been a bit of learning curve, but I am excited to become better at it with more practice throughout the course.  Though I do think the way Racket's syntax does arithmetic is rather interesting and unique compare to my previous languages learned. 


<!-- more -->

