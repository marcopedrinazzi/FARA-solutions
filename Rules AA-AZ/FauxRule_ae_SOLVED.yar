rule FauxRule_ae
{
    strings:
        $a = "example string"
    condition:
        for all i in (1..#a): (@a[i]) //verify that there are #a occurences of string $a exists in the document
}

/*a few notes
1st loop:
does $a exist? yes

and so on

for all i in (1..#a) : ( @a[i] < 100 )

In this case we’re iterating over every occurrence of $a (remember that #a represents the number of occurrences of $a). This rule is specifying that every occurrence of $a should be within the first 100 bytes of the file

*/

/*ORIGINAL RULE

rule FauxRule_ae
{
    strings:
        $a = "example string"
    condition:
        for all i in (1...#a): ($a)
}

*/