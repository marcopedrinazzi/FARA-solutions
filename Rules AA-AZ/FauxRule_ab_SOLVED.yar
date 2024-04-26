rule FauxRule_ab
{
    strings:
        $a = "example string"
    condition:
        $a in (100..200) //the string $a must be found at an offset between 0 and 100
}

/*ORIGINAL RULE
rule FauxRule_ab
{
    strings:
        $a = "example string"
    condition:
        $a in 100..200 //the string $a must be found at an offset between 0 and 100 => fix: $a in (100..200)
}
*/