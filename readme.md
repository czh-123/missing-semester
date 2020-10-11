# missing-semester
some exercise and notes

## lecture2
question2: I can use `dir=$(pwd)` in one script and reuse dir when using `source *.sh` 

question3: `[[ ]]` can be **only** used in bash ,korn shell and zsh. So be careful.
* take care of the rules as well . 
```
var="abc" // no space	
var = "123"  //wrong

if[$var_1=$var_2];then // wrong
if [ $var_1 = $var_2]  // whitespace

```
* when using `>` it's actually `1>`.  // using \<br\> to newline <br>
 `1>&2` redirect the standard output to stderror <br> 
 `1>2`redirect the standard output to file `2` <br>
 
