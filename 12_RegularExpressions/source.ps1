# Match Characters

Write-Host "1) Matching exact characters anywhere in the original value"
$res = "book" -match "oo"
Write-Host "->"$res
$res = "book" -match "ook"
Write-Host "->"$res
$res = "book" -match "bk"
Write-Host "->"$res

Write-Host "2) Matches any single character"
$res = "copy" -match "c..y"
Write-Host "->"$res
$res = "copy" -match "c..p"
Write-Host "->"$res
$res = "copy" -match "c...y"
Write-Host "->"$res
$res = "mango" -match "m..g."
Write-Host "->"$res

Write-Host "3) Matches at least one of the characters in the brackets"
$res = "big" -match "b[iou]g"
Write-Host "->"$res
$res = "big" -match "b[iou]lg"
Write-Host "->"$res

Write-Host "4) Matches at least one of the characters within the range. The use of a hyphen (-) allows you to specify an adjacent character."
$res = "band" -match "ba[l-p]d"
Write-Host "->"$res
$res = "band" -match "ban[l-p]d"
Write-Host "->"$res

Write-Host "5) Matches any characters except those in brackets"
$res = "and" -match "[^brt]nd"
Write-Host "->"$res
$res = "and" -match "[^bart]nd"
Write-Host "->"$res

Write-Host "6) Matches the beginning characters"
$res = "copy" -match "^co"
Write-Host "->"$res
$res = "copy" -match "^coo"
Write-Host "->"$res
$res = "copy" -match "^cop"
Write-Host "->"$res
$res = "copy" -match "c^op"
Write-Host "->"$res
$res = "copy" -match "py^"
Write-Host "->"$res

Write-Host "7) Matches the end characters"
$res = "copy" -match "py$"
Write-Host "->"$res
$res = "copy" -match "opy$"
Write-Host "->"$res
$res = "copy" -match "cpy$"
Write-Host "->"$res

Write-Host "8) Matches any instances (i.e. 0 or more instances) of the preceding expression (i.e. expression before the `*`)"
$res = "mango" -match "g*" # it will return True because the character 'g' is present 1 time
Write-Host "->"$res
$res = "mango" -match "z*" # it will return True because the character 'z' is present 0 time
Write-Host "->"$res

Write-Host "9) Matches 1 or more instance(s) of the preceding expression"
$res = "mango" -match "g+"
Write-Host "->"$res
$res = "mango" -match "z+"
Write-Host "->"$res
$res = "mango" -match "(ang)+"
Write-Host "->"$res
$res = "mango" -match "(asng)+"
Write-Host "->"$res
$res = "mango" -match "(nz)+"
Write-Host "->"$res

Write-Host "10) Matches zero or one instance of the preceding expression/character"
$res = "mango" -match "g?"
Write-Host "->"$res
$res = "mano" -match "g?"
Write-Host "->"$res
$res = "magngo" -match "g?" # it will return True because it finds the character 'g' atleast one time
Write-Host "->"$res
$res = "maggngo" -match "g?" # it will return True because it finds the character 'g' atleast one time
Write-Host "->"$res

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
$res = "abcd defg" -match "\p{Ll}+" # it will return True because a lowercase character is found
Write-Host "->"$res
$res = "1" -match "\p{Ll}+" # it will return False because neither lowercase character nor lowercase character with uppercase variant is found
Write-Host "->"$res
$res = "A" -match "\p{Ll}+" # it will return True because a lowercase character that has an uppercase variant is present
Write-Host "->"$res
$res = "@" -match "\p{Ll}+" # it will return False because neither lowercase character nor lowercase character with uppercase variant is found
Write-Host "->"$res
$res = "@@s@" -match "\p{Ll}+" # it will return True because there's atleast one lowercase character is present
Write-Host "->"$res
$res = 1234 -match "\p{Ll}+" # it will return False because neither lowercase character nor lowercase character with uppercase variant is found
Write-Host "->"$res

Write-Host "12)"
<#
Format:  \P{name}
Logic:   Matches text not included in the groups and block ranges specified
        in {name}.

More Knowledge:
1) \P{name} : it behaves opposite from \p{name}
#>
$res =  1234 -match "\P{Ll}+"
Write-Host "->"$res
$res = "A" -match "\P{Ll}+"
Write-Host "->"$res
$res = "@" -match "\P{Ll}+"
Write-Host "->"$res

Write-Host "13)"
<#
Format:  \w
Logic:   Matches any word character. Equivalent to the Unicode character
        categories [\p{Ll}\p{Lu}\p{Lt}\p{Lo}\p{Nd}\p{Pc}]. If ECMAScript-
        compliant behavior is specified with the ECMAScript option, \w is
        equivalent to [a-zA-Z_0-9].
#>
$res = "abcd defg" -match "\w+"
Write-Host "->"$res
$res = "_" -match "\w+"
Write-Host "->"$res
$res = "123" -match "\w+"
Write-Host "->"$res
$res = "#@$^&" -match "\w+"
Write-Host "->"$res

Write-Host "14)"
<#
Format:  \W
Logic:   Matches any nonword character (take underscore as a word character).
         Equivalent to the Unicode categories
        [^\p{Ll}\p{Lu}\p{Lt}\p{Lo}\p{Nd}\p{Pc}].

More Knowledge:
1) \W behaves opposite from \w.
#>
$res = "abcd defg" -match "\W+" # it will return True because space is present
Write-Host "->"$res
$res = "_" -match "\W+"
Write-Host "->"$res
$res = "123" -match "\W+"
Write-Host "->"$res
$res = "#@$^&" -match "\W+"
Write-Host "->"$res
$res = "AA" -match "\W+"
Write-Host "->"$res

Write-Host "15)"
<#
Format:  \s
Logic:   Matches any white-space character. Equivalent to the Unicode
        character categories [\f\n\r\t\v\x85\p{Z}].
#>
$res = "abcd defg" -match "\s+"
Write-Host "->"$res
$res = "abcddefg" -match "\s+"
Write-Host "->"$res
$res = "123aaa" -match "\s+"
Write-Host "->"$res

Write-Host "16)"
<#
Format:  \S
Logic:   Matches any non-white-space character. Equivalent to the Unicode
        character categories [^\f\n\r\t\v\x85\p{Z}].

More Knowledge:
1) \S behaves opposite from \s.
#>
$res = "abcd defg" -match "\S+" # it will return True becuase non-space character is present
Write-Host "->"$res
$res = "abcddefg" -match "\S+"
Write-Host "->"$res
$res = " " -match "\S+" # it will return False becuase non-space character is not present
Write-Host "->"$res

Write-Host "17)"
<#
Format:  \d
Logic:   Matches any decimal digit. Equivalent to \p{Nd} for Unicode and
        [0-9] for non-Unicode behavior.
#>
$res = 12345 -match "\d+"
Write-Host "->"$res
$res = "12345" -match "\d+"
Write-Host "->"$res
$res = "a" -match "\d+"
Write-Host "->"$res

Write-Host "18)"
<#
Format:  \D
Logic:   Matches any nondigit. Equivalent to \P{Nd} for Unicode and [^0-9]
        for non-Unicode behavior.

More Knowledge:
1) \D behaves opposite with respect to \d.
#>
$res = "abcd" -match "\D+" # it will return True because it founds atleast one non-digit character
Write-Host "->"$res
$res = "1223" -match "\D+" # it will return False because no non-digit character is present
Write-Host "->"$res
$res = "2@@" -match "\D+" # it will return True because it founds atleast one non-digit character
Write-Host "->"$res

# Match Quantifiers

Write-Host "19)"
<#
Format:  *
Logic: It matches 0 or more time(s) the preceding expression/character.
       It is equivalent to {0,}.
#>
$res = "abc" -match "\w*"
Write-Host "->"$res
$res = "abc" -match "\w{0,}"
Write-Host "->"$res
$res = "" -match "\w*" # it will return True because it checks for zero or more matches and here it found zero match
Write-Host "->"$res
$res = "@" -match "\w" # it will return False because it does not find any character from (a-z,A-Z,_,0-9)
Write-Host "->"$res

Write-Host "20)"
<#
Format:  +
Logic:   It matches 1 or more time(s) the preceding expression/character.
#>
$res = "xyxyxy" -match "xy+" # it will return True because "xy" is present
Write-Host "->"$res
$res = "xsy" -match "xy+" # it will return False because "xy" is not present even single time
Write-Host "->"$res
$res = "xyxsy" -match "xy+" # it will return True because "xy" is present atleast one time
Write-Host "->"$res

Write-Host "21)"
<#
Format:  ?
Logic:   Specifies zero or one matches; for example, \w? or (abc)?.
         It is equivalent to {0,1}.
#>
$res = "abcde" -match "\w?" # it will return True because it finds the character (i.e. a-z,A-Z,_,0-9) atleast 1 time
Write-Host "->"$res
$res = "abcde" -match "\w{0,1}" # it will return True because it finds the character (i.e. a-z,A-Z,_,0-9) atleast 1 time
Write-Host "->"$res
$res = "" -match "\w?" # it will return True because it finds the character (i.e. a-z,A-Z,_,0-9) atleast 0 time
Write-Host "->"$res
$res = "@" -match "\w?" # it will return True because it finds the character (i.e. a-z,A-Z,_,0-9) atleast 0 time
Write-Host "->"$res

Write-Host "22)"
<#
Format:  {n}
Logic:   Checks for atleast n (i.e greater than or equal to n, where n >= 0) matches; for example, (pizza){2}.
#>
$res = "abc" -match "\w{2}"
Write-Host "->"$res
$res = "abc" -match "\w{4}" # it will return False because atleast 4 charcters from (a-z,A-Z,_,0-9) are not present
Write-Host "->"$res
$res = "abc" -match "\w{0}"
Write-Host "->"$res
$res = "" -match "\w{0}"
Write-Host "->"$res
$res = "pizzapizza" -match "(pizza){2}"
Write-Host "->"$res
$res = "pizzapizzsssa" -match "(pizza){2}" # it will return False because pizza is not present atleast 2 times
Write-Host "->"$res

Write-Host "23)"
<#
Format:  {n,m}
Logic:   Checks the mentioned character/expression should be {atleast(>=) n} Logical-OR {atmost(<=) m} matches.
#>
$res = "abc" -match "\w{2,3}" # it will return True because total no of word characters are more than 2
Write-Host "->"$res
$res = "abcdefgh" -match "\w{2,5}" # it will return True because total no of word characters are more than 2
Write-Host "->"$res
$res = "a" -match "\w{2,5}" # it will return False because total no of word characters are less than 2
Write-Host "->"$res
$res = "afaafsafsfasf" -match "\w{,5}" # it will return False because total no of word characters are greater than 5 and it is expecting to have less than or equal to 5
Write-Host "->"$res

<#
OUTPUT:

1) Matching exact characters anywhere in the original value
-> True
-> True
-> False
2) Matches any single character
-> True
-> False
-> False
-> True
3) Matches at least one of the characters in the brackets
-> True
-> False
4) Matches at least one of the characters within the range. The use of a hyphen (-) allows you to specify an adjacent character.
-> True
-> False
5) Matches any characters except those in brackets
-> True
-> False
6) Matches the beginning characters
-> True
-> False
-> True
-> False
-> False
7) Matches the end characters
-> True
-> True
-> False
8) Matches any instances (i.e. 0 or more instances) of the preceding expression (i.e. expression before the *)
-> True
-> True
9) Matches 1 or more instance(s) of the preceding expression
-> True
-> False
-> True
-> False
-> False
10) Matches zero or one instance of the preceding expression
-> True
-> True
-> True
-> True
11)
-> True
-> False
-> True
-> False
-> True
-> False
12)
-> True
-> False
-> True
13)
-> True
-> True
-> True
-> False
14)
-> True
-> False
-> False
-> True
-> False
15)
-> True
-> False
-> False
16)
-> True
-> True
-> False
17)
-> True
-> True
-> False
18)
-> True
-> False
-> True
19)
-> True
-> True
-> True
-> False
20)
-> True
-> False
-> True
21)
-> True
-> True
-> True
-> True
22)
-> True
-> False
-> True
-> True
-> True
-> False
23)
-> True
-> True
-> False
-> False
#>