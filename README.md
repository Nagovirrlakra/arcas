# arcas
Fast wordlist generator writed in Julia 
maybe you was popular with wordlist generator such like crunch and cupp. and its built in C language. and i wonder, why there's no one create wordlist generator
or hacking tools in julia. So i built one. this is only a simple wordlist generator. has not many option like crunch do, but you can make powerful wordlist from it.
wordlist is the most important thing in bruteforce...
## Requirements
You need to install Julialang before, cause this written in Julia. You can find it here: 
https://julialang.org/
and you also need Combinatorics package installed in your Julia. install it by opening th REPL
and then press 
``
]
``
then write
``
add Combinatorics
``
and you can run the code by navigating to file directory and run it by typing
```
julia arcas.jl
```
or run arcas-adv
```
julia arcas-adv.jl
```
or you can install it directly to your computer by running the instal script
```
chmod +x install.sh
./install.sh
```
### Usage
there's 2 package on arcas. arcas, and arcas-adv. you can use both.
arcas is used for generate wordlist with the base word that you enter
arcas-adv is used for generate wordlist by target;s profile

Example: 
once you execute, arcas will prompt:
```
Enter the base words (separated by commas):
```
just enter the word that you wanna generate, such as apple,john,cat,maybe
and then it will prompt:
```
Enter the maximum length of the generated words:
```
it used to determine the length of wordlist generated. it can be 10 - 999999 just use as you need.
### Credits
This Project is Just based on my experience and yeah, just for fun
credit, to my laptop that always accompany me when i code or learn to code
