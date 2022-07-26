# 0x06. Regular expression

# Tasks
## [0-simply_match_school.rb](0-simply_match_school.rb)
Requirements:

 - The regular expression must match School
 - Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method

Example:

```
sylvain@ubuntu$ ./0-simply_match_school.rb School | cat -e
School$
sylvain@ubuntu$ ./0-simply_match_school.rb "Best School" | cat -e
School$
sylvain@ubuntu$ ./0-simply_match_school.rb "School Best School" | cat -e
SchoolSchool$
sylvain@ubuntu$ ./0-simply_match_school.rb "Grace Hopper" | cat -e
$
```
chmod a+x 0-simply_match_school.rb; ./0-simply_match_school.rb

## [1-repetition_token_0.rb](1-repetition_token_0.rb)
Requirements:

 - Find the regular expression that will match the above cases
 - Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method


 ```
hbtn 
hbtttn 
hbttttn 
hbtttttn 
hbttttttn 
```

chmod a+x 1-repetition_token_0.rb; ./1-repetition_token_0.rb

# Git push command
git add --all; git commit -m "";git push