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
chmod a+x 0-simply_match_school.rb;

## [1-repetition_token_0.rb](1-repetition_token_0.rb)
```
hbtn 
hbtttn 
hbttttn 
hbtttttn 
hbttttttn 
```

hbn
hbtn
**hbttn**
**hbtttn**
**hbttttn**
**hbtttttn**
hbttttttn

Requirements:

 - Find the regular expression that will match the above cases
 - Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method

chmod a+x 1-repetition_token_0.rb; ./1-repetition_token_0.rb

## [2-repetition_token_1.rb](2-repetition_token_1.rb)
Requirements:

 - Find the regular expression that will match the above cases
 - Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method

```
htn
hbtn
hbbtn
hbbbtn
```

chmod a+x 2-repetition_token_1.rb;

## 3-repetition_token_2.rb
htn
**hbtn**
**hbbtn**
**hbbbtn**

Requirements:

 - Find the regular expression that will match the above cases
 - Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method

chmod a+x 3-repetition_token_2.rb;

## [4-repetition_token_3.rb](4-repetition_token_3.rb)

```
hbn
hbon
hbtn
hbttn
hbtttn
hbttttn
```

**hbn**
hbon
**hbtn**
**hbttn**
**hbtttn**
**hbttttn**

Requirements:

 - Find the regular expression that will match the above cases
 - Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method
 - Your regex should not contain square brackets

chmod a+x 4-repetition_token_3.rb;


## [5-beginning_and_end.rb](5-beginning_and_end.rb)
Requirements:

 - The regular expression must be exactly matching a string that starts with h ends with n and can have any single character in between
 - Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method

Example:
```
sylvain@ubuntu$ ./5-beginning_and_end.rb 'hn' | cat -e
$
sylvain@ubuntu$ ./5-beginning_and_end.rb 'hbn' | cat -e
hbn$
sylvain@ubuntu$ ./5-beginning_and_end.rb 'hbtn' | cat -e
$
sylvain@ubuntu$ ./5-beginning_and_end.rb 'h8n' | cat -e
h8n$
sylvain@ubuntu$
$
```

chmod a+x 5-beginning_and_end.rb

# Git push command
git add --all; git commit -m "";git push