rule FauxRule_al
{
    strings:
        $a = "example string"

    condition:
        $a in (0..9000) //searches if $a is in 0 - 9000 offset, i think it's not super efficient, it depends on the file size i guess
}

/*ORIGINAL RULE:

rule FauxRule_al
{
    strings:
        $a = "example string"

    condition:
        $a in (0..9000) //searches if $a is in 0 - 9000 offset, i think it's not super efficient, it depends on the file size i guess
}

*/