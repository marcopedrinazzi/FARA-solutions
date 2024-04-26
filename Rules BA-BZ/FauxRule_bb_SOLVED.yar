rule FauxRule_bb
{
    strings:
        $a = "example string"

    condition:
        $a and filesize == 157
}


/*ORIGINAL RULE:
rule FauxRule_bb
{
    strings:
        $a = "example string"

    condition:
        $a 
        and filesize = 157
}

*/