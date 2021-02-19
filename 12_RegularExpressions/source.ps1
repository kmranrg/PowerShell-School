# Match Characters

Write-Host "1) Matching exact characters anywhere in the original value"
$res = "book" -match "oo"
$matchedPattern = "book" | Select-String "oo"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "book" -match "ook"
$matchedPattern = "book" | Select-String "ook"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "book" -match "bk"
$matchedPattern = "book" | Select-String "bk"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

Write-Host "2) Matches any single character"
$res = "copy" -match "c..y"
$matchedPattern = "copy" | Select-String "c..y"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "copy" -match "c..p"
$matchedPattern = "copy" | Select-String "c..p"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "copy" -match "c...y"
$matchedPattern = "copy" | Select-String "c...y"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "mango" -match "m..g."
$matchedPattern = "mango" | Select-String "m..g."
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

Write-Host "3) Matches at least one of the characters in the brackets"
$res = "big" -match "b[iou]g"
$matchedPattern = "big" | Select-String "b[iou]g"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "big" -match "b[iou]lg"
$matchedPattern = "big" | Select-String "b[iou]lg"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

Write-Host "4) Matches at least one of the characters within the range. The use of a hyphen (-) allows you to specify an adjacent character."
$res = "band" -match "ba[l-p]d"
$matchedPattern = "band" | Select-String "ba[l-p]d"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "band" -match "ban[l-p]d"
$matchedPattern = "band" | Select-String "ban[l-p]d"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

Write-Host "5) Matches any characters except those in brackets"
$res = "and" -match "[^brt]nd"
$matchedPattern = "and" | Select-String "[^brt]nd"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "and" -match "[^bart]nd"
$matchedPattern = "and" | Select-String "[^bart]nd"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

Write-Host "6) Matches the beginning characters"
$res = "copy" -match "^co"
$matchedPattern = "copy" | Select-String "^co"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "copy" -match "^coo"
$matchedPattern = "copy" | Select-String "^coo"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "copy" -match "^cop"
$matchedPattern = "copy" | Select-String "^cop"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "copy" -match "c^op"
$matchedPattern = "copy" | Select-String "c^op"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "copy" -match "py^"
$matchedPattern = "copy" | Select-String "py^"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

Write-Host "7) Matches the end characters"
$res = "copy" -match "py$"
$matchedPattern = "copy" | Select-String "py$"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "copy" -match "opy$"
$matchedPattern = "copy" | Select-String "opy$"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "copy" -match "cpy$"
$matchedPattern = "copy" | Select-String "cpy$"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

Write-Host "8) Matches any instances (i.e. 0 or more instances) of the preceding expression (i.e. expression before the `*`)"
$res = "mango" -match "g*" # it will return True no matter it finds character "g" or not
$matchedPattern = "mango" | Select-String "g*"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "mango" -match "z*" # it will return True no matter it finds character "z" or not
$matchedPattern = "mango" | Select-String "z*"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

Write-Host "9) Matches 1 or more instance(s) of the preceding expression"
$res = "mango" -match "g+"
$matchedPattern = "mango" | Select-String "g+"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "mango" -match "z+" # it will return False becuase it can not find character "z" atleast 1 time
$matchedPattern = "mango" | Select-String "z+"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "mangang" -match "(ang)+" # it will return True because it founds "ang" 2 times consecutively
$matchedPattern = "mangang" | Select-String "(ang)+"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "mangoang" -match "(ang)+" # it will return True because it founds "ang" 1 time consecutively
$matchedPattern = "mangoang" | Select-String "(ang)+"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "mango" -match "(asng)+"
$matchedPattern = "mango" | Select-String "(asng)+"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "mango" -match "(nz)+"
$matchedPattern = "mango" | Select-String "(nz)+"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

Write-Host "10) Matches zero or one instance of the preceding expression/character"
$res = "mango" -match "g?" # it will return True whether it finds character 'g' or not
$matchedPattern = "mango" | Select-String "g?"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "mano" -match "g?" # it will return True whether it finds character 'g' or not
$matchedPattern = "mano" | Select-String "g?"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "magngo" -match "g?" # it will return True whether it finds character 'g' or not
$matchedPattern = "magngo" | Select-String "g?"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "maggngo" -match "g?" # it will return True whether it finds character 'g' or not
$matchedPattern = "maggngo" | Select-String "g?"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

# Match Character Classes

Write-Host "11)"
<#
Format:  \p{name}
Logic:   Matches any character in the named character class specified by
         {name}. Supported names are Unicode groups and block ranges such
         as Ll, Nd, Z, IsGreek, and IsBoxDrawing.

More Knowledge:
1) \p{L} or \p{Letter}: any kind of letter from any language.
2) \p{Ll} or \p{Lowercase_Letter}: a lowercase letter that has an uppercase variant.
3) \p{Lu} or \p{Uppercase_Letter}: an uppercase letter that has a lowercase variant
#>
$res = "abcd defg" -match "\p{Ll}+" # it will return True because atleast one lowercase character is found
$matchedPattern = "abcd defg" | Select-String "\p{Ll}+"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "1" -match "\p{Ll}+" # it will return False because neither lowercase character nor lowercase character with uppercase variant is found
$matchedPattern = "1" | Select-String "\p{Ll}+"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "A" -match "\p{Ll}+" # it will return True because atleast one lowercase character that has an uppercase variant is present
$matchedPattern = "A" | Select-String "\p{Ll}+"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "@" -match "\p{Ll}+" # it will return False because neither lowercase character nor lowercase character with uppercase variant is found
$matchedPattern = "@" | Select-String "\p{Ll}+"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "@@s@" -match "\p{Ll}+" # it will return True because there's atleast one lowercase character is present
$matchedPattern = "@@s@" | Select-String "\p{Ll}+"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = 1234 -match "\p{Ll}+" # it will return False because neither lowercase character nor lowercase character with uppercase variant is found
$matchedPattern = 1234 | Select-String "\p{Ll}+"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

Write-Host "12)"
<#
Format:  \P{name}
Logic:   Matches text not included in the groups and block ranges specified
        in {name}.

More Knowledge:
1) \P{name} : it behaves opposite from \p{name}
#>
$res =  1234 -match "\P{Ll}+" # it will return True because it finds atleast one '\P{Ll}' character
$matchedPattern = 1234 | Select-String "\P{Ll}+"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "A" -match "\P{Ll}+" # it will return False because it does not find any '\P{Ll}' character
$matchedPattern = "A" | Select-String "\P{Ll}+"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "@" -match "\P{Ll}+" # it will return True because it finds atleast one '\P{Ll}' character
$matchedPattern = "@" | Select-String "\P{Ll}+"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

Write-Host "13)"
<#
Format:  \w
Logic:   Matches any word character. Equivalent to the Unicode character
        categories [\p{Ll}\p{Lu}\p{Lt}\p{Lo}\p{Nd}\p{Pc}]. If ECMAScript-
        compliant behavior is specified with the ECMAScript option, \w is
        equivalent to [a-zA-Z_0-9].
#>
$res = "abcd defg" -match "\w+"
$matchedPattern = "abcd defg" | Select-String "\w+"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "_" -match "\w+"
$matchedPattern = "_" | Select-String "\w+"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "123" -match "\w+"
$matchedPattern = "123" | Select-String "\w+"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "#@$^&" -match "\w+"
$matchedPattern = "#@$^&" | Select-String "\w+"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

Write-Host "14)"
<#
Format:  \W
Logic:   Matches any nonword character (take underscore as a word character).
         Equivalent to the Unicode categories
        [^\p{Ll}\p{Lu}\p{Lt}\p{Lo}\p{Nd}\p{Pc}].

More Knowledge:
1) \W behaves opposite from \w.
#>
$res = "abcd defg" -match "\W+" # it will return True because space (which is a non word character) is present
$matchedPattern = "abcd defg" | Select-String "\W+"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "_" -match "\W+" # it will return False because no non-word character is present
$matchedPattern = "_" | Select-String "\W+"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "123" -match "\W+" # it will return False because no non-word character is present
$matchedPattern = "123" | Select-String "\W+"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "#@$^&" -match "\W+" # it will return True because non-word character is present
$matchedPattern = "#@$^&" | Select-String "\W+"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "AA@" -match "\W+" # it will return True because non-word character is present
$matchedPattern = "AA@" | Select-String "\W+"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

Write-Host "15)"
<#
Format:  \s
Logic:   Matches any white-space character. Equivalent to the Unicode
        character categories [\f\n\r\t\v\x85\p{Z}].
#>
$res = "abcd defg" -match "\s+" # it will return True because space character is present
$matchedPattern = "abcd defg" | Select-String "\s+"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "abcddefg" -match "\s+" # it will return False because space character is not present
$matchedPattern = "abcddefg" | Select-String "\s+"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "123aaa" -match "\s+" # it will return False because space character is not present
$matchedPattern = "123aaa" | Select-String "\s+"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

Write-Host "16)"
<#
Format:  \S
Logic:   Matches any non-white-space character. Equivalent to the Unicode
        character categories [^\f\n\r\t\v\x85\p{Z}].

More Knowledge:
1) \S behaves opposite from \s.
#>
$res = "abcd defg" -match "\S+" # it will return True becuase non-space character is present
$matchedPattern = "abcd defg" | Select-String "\S+"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "abcddefg" -match "\S+" # it will return True becuase non-space character is present
$matchedPattern = "abcddefg" | Select-String "\S+"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = " " -match "\S+" # it will return False becuase non-space character is not present
$matchedPattern = " " | Select-String "\S+"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

Write-Host "17)"
<#
Format:  \d
Logic:   Matches any decimal digit. Equivalent to \p{Nd} for Unicode and
        [0-9] for non-Unicode behavior.
#>
$res = 12345 -match "\d+"
$matchedPattern = 12345 | Select-String "\d+"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "12345" -match "\d+"
$matchedPattern = "12345" | Select-String "\d+"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "a" -match "\d+"
$matchedPattern = "a" | Select-String "\d+"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

Write-Host "18)"
<#
Format:  \D
Logic:   Matches any nondigit. Equivalent to \P{Nd} for Unicode and [^0-9]
        for non-Unicode behavior.

More Knowledge:
1) \D behaves opposite with respect to \d.
#>
$res = "abcd" -match "\D+" # it will return True because it founds atleast one non-digit character
$matchedPattern = "abcd" | Select-String "\D+"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "1223" -match "\D+" # it will return False because no non-digit character is present
$matchedPattern = "1223" | Select-String "\D+"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "2@@" -match "\D+" # it will return True because it founds atleast one non-digit character
$matchedPattern = "2@@" | Select-String "\D+"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

# Match Quantifiers

Write-Host "19)"
<#
Format:  *
Logic: It matches 0 or more time(s) the preceding expression/character.
       It is equivalent to {0,}.
#>
$res = "abc" -match "\w*"
$matchedPattern = "abc" | Select-String "\w*"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "abc" -match "\w{0,}"
$matchedPattern = "abc" | Select-String "\w{0,}"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "" -match "\w*" # it will return True because it checks for zero or more matches and here it found zero match
$matchedPattern = "" | Select-String "\w*"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "@" -match "\w" # it will return False because it does not find any word character (i.e. a-z,A-Z,_,0-9)
$matchedPattern = "@" | Select-String "\w"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

Write-Host "20)"
<#
Format:  +
Logic:   It matches 1 or more time(s) the preceding expression/character.
         It is equivalent to {1,}.
#>
$res = "xyxyxy" -match "(xy)+" # it will return True because "xy" is present
$matchedPattern = "xyxyxy" | Select-String "(xy)+"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "xyxyxy" -match "(xy){1,}" # it will return True because "xy" is present
$matchedPattern = "xyxyxy" | Select-String "(xy){1,}"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "xsy" -match "(xy)+" # it will return False because "xy" is not present even single time
$matchedPattern = "xsy" | Select-String "(xy)+"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "xyxsy" -match "(xy)+" # it will return True because "xy" is present atleast one time
$matchedPattern = "xyxsy" | Select-String "(xy)+"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

Write-Host "21)"
<#
Format:  ?
Logic:   Specifies zero or one matches; for example, \w? or (abc)?.
         It is equivalent to {0,1}.
#>
$res = "abcde" -match "\w?" # it will return True the moment it finds one word character (i.e. a-z,A-Z,_,0-9) 1 time
$matchedPattern = "abcde" | Select-String "\w?"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "abcde" -match "\w{0,1}" # it will return True the moment it finds one word character (i.e. a-z,A-Z,_,0-9) 1 time
$matchedPattern = "abcde" | Select-String "\w{0,1}"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "" -match "\w?" # it will return True because it finds the word character (i.e. a-z,A-Z,_,0-9) 0 time
$matchedPattern = "" | Select-String "\w?"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "@" -match "\w?" # it will return True because it finds the word character (i.e. a-z,A-Z,_,0-9) 0 time
$matchedPattern = "@" | Select-String "\w?"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

Write-Host "22)"
<#
Format:  {n}
Logic:   Specifies exactly n matches; for example, (pizza){2}.
#>
$res = "abc" -match "\w{2}" # it will return True the moment it find the word character exactly 2 times
$matchedPattern = "abc" | Select-String "\w{2}"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "a" -match "\w{2}" # it will return False because it can not find the word character exactly 2 times
$matchedPattern = "a" | Select-String "\w{2}"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "pizzapizzsssa" -match "(pizza){2}" # it will return False because it can not find the "pizza" exactly 2 times
$matchedPattern = "pizzapizzsssa" | Select-String "(pizza){2}"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

Write-Host "23)"
<#
Format:  {n,}
Logic:   Checks for atleast n (i.e greater than or equal to n, where n >= 0) matches; for example, (pizza){2,}.
#>
$res = "abc" -match "\w{2,}" # it will return True because word character is present atleast 2 times
$matchedPattern = "abc" | Select-String "\w{2,}"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "abc" -match "\w{4,}" # it will return False because atleast 4 charcters from (a-z,A-Z,_,0-9) are not present
$matchedPattern = "abc" | Select-String "\w{4,}"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "abc" -match "\w{0,}" # it will return True because word character is present atleast 0 time
$matchedPattern = "abc" | Select-String "\w{0,}"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "" -match "\w{0,}" # it will return True because word character is present atleast 0 time
$matchedPattern = "" | Select-String "\w{0,}"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "pizzapizza" -match "(pizza){2,}" # it will return True because "pizza" is present atleast 2 times
$matchedPattern = "pizzapizza" | Select-String "(pizza){2,}"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "pizzapizzsssa" -match "(pizza){2,}" # it will return False because pizza is not present atleast 2 times
$matchedPattern = "pizzapizzsssa" | Select-String "(pizza){2,}"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

Write-Host "24)"
<#
Format:  {n,m}
Logic:   Specifies at least n, but no more than m, matches.
#>
$res = "abc" -match "\w{2,3}" # it will return True because total no of word characters are greater than or equal to 2 and less than or equal to 5
$matchedPattern = "abc" | Select-String "\w{2,3}"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "abcdefgh" -match "\w{2,5}" # it will return True because total no of word characters are >= 2 and <= 5
$matchedPattern = "abcdefgh" | Select-String "\w{2,5}"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "a" -match "\w{2,5}" # it will return False because total no of word characters are less than 2
$matchedPattern = "a" | Select-String "\w{2,5}"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

$res = "afaafsafsfasf" -match "\w{,5}" # it will return False because total no of word characters are greater than 5 and it is expecting to have less than or equal to 5
$matchedPattern = "afaafsafsfasf" | Select-String "\w{,5}"
Write-Host "->"$res "-> Matched Pattern:" $matchedPattern.Matches.Value

<#
OUTPUT:

1) Matching exact characters anywhere in the original value
-> True -> Matched Pattern: oo
-> True -> Matched Pattern: ook
-> False -> Matched Pattern: 
2) Matches any single character
-> True -> Matched Pattern: copy
-> False -> Matched Pattern: 
-> False -> Matched Pattern: 
-> True -> Matched Pattern: mango
3) Matches at least one of the characters in the brackets
-> True -> Matched Pattern: big
-> False -> Matched Pattern: 
4) Matches at least one of the characters within the range. The use of a hyphen (-) allows you to specify an adjacent character.
-> True -> Matched Pattern: band
-> False -> Matched Pattern: 
5) Matches any characters except those in brackets
-> True -> Matched Pattern: and
-> False -> Matched Pattern: 
6) Matches the beginning characters
-> True -> Matched Pattern: co
-> False -> Matched Pattern: 
-> True -> Matched Pattern: cop
-> False -> Matched Pattern: 
-> False -> Matched Pattern: 
7) Matches the end characters
-> True -> Matched Pattern: py
-> True -> Matched Pattern: opy
-> False -> Matched Pattern: 
8) Matches any instances (i.e. 0 or more instances) of the preceding expression (i.e. expression before the *)
-> True -> Matched Pattern: 
-> True -> Matched Pattern: 
9) Matches 1 or more instance(s) of the preceding expression
-> True -> Matched Pattern: g
-> False -> Matched Pattern: 
-> True -> Matched Pattern: angang
-> True -> Matched Pattern: ang
-> False -> Matched Pattern: 
-> False -> Matched Pattern: 
10) Matches zero or one instance of the preceding expression/character
-> True -> Matched Pattern: 
-> True -> Matched Pattern: 
-> True -> Matched Pattern: 
-> True -> Matched Pattern: 
11)
-> True -> Matched Pattern: abcd
-> False -> Matched Pattern: 
-> True -> Matched Pattern: A
-> False -> Matched Pattern: 
-> True -> Matched Pattern: s
-> False -> Matched Pattern: 
12)
-> True -> Matched Pattern: 1234
-> False -> Matched Pattern: 
-> True -> Matched Pattern: @
13)
-> True -> Matched Pattern: abcd
-> True -> Matched Pattern: _
-> True -> Matched Pattern: 123
-> False -> Matched Pattern: 
14)
-> True -> Matched Pattern:  
-> False -> Matched Pattern: 
-> False -> Matched Pattern: 
-> True -> Matched Pattern: #@&
-> True -> Matched Pattern: @
15)
-> True -> Matched Pattern:  
-> False -> Matched Pattern: 
-> False -> Matched Pattern: 
16)
-> True -> Matched Pattern: abcd
-> True -> Matched Pattern: abcddefg
-> False -> Matched Pattern: 
17)
-> True -> Matched Pattern: 12345
-> True -> Matched Pattern: 12345
-> False -> Matched Pattern: 
18)
-> True -> Matched Pattern: abcd
-> False -> Matched Pattern: 
-> True -> Matched Pattern: @@
19)
-> True -> Matched Pattern: abc
-> True -> Matched Pattern: abc
-> True -> Matched Pattern: 
-> False -> Matched Pattern: 
20)
-> True -> Matched Pattern: xyxyxy
-> True -> Matched Pattern: xyxyxy
-> False -> Matched Pattern: 
-> True -> Matched Pattern: xy
21)
-> True -> Matched Pattern: a
-> True -> Matched Pattern: a
-> True -> Matched Pattern: 
-> True -> Matched Pattern: 
22)
-> True -> Matched Pattern: ab
-> False -> Matched Pattern: 
-> False -> Matched Pattern: 
23)
-> True -> Matched Pattern: abc
-> False -> Matched Pattern: 
-> True -> Matched Pattern: abc
-> True -> Matched Pattern: 
-> True -> Matched Pattern: pizzapizza
-> False -> Matched Pattern: 
24)
-> True -> Matched Pattern: abc
-> True -> Matched Pattern: abcde
-> False -> Matched Pattern: 
-> False -> Matched Pattern: 
#>