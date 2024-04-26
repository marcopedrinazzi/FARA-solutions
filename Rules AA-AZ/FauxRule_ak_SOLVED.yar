rule FauxRule_ak
{
    strings:
        $a = {01 23 45 67 89 AB CD EF}

    condition:
        $a
}

/*ORIGINAL RULE

rule FauxRule_ak
{
    strings:
        $a = {01 23 45 67 89 AB CD EF} ascii wide

    condition:
        $a
}

*/