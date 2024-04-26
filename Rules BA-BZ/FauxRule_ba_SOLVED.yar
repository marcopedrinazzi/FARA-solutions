rule FauxRule_ba
{
    strings:
        $a = "example string"

    condition:
        #a == 1 //also  $a could work
}

/*ORIGINAL RULE
rule FauxRule_ba
{
    strings:
        $a = "example string"

    condition:
        #a //fix $a or #a == 1
}

*/