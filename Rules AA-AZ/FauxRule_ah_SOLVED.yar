rule FauxRule_ah
{
    strings:
        $a = "example string"

    condition:
        #a > 10 //assuming we want to count the number of occurences of string $a
}

/*ORIGINAL RULE

rule FauxRule_ah
{
    strings:
        $a = "example string"

    condition:
        $a > 10
}


*/