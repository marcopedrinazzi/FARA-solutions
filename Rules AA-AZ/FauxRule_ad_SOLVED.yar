rule FauxRule_ad
{
    strings:
        $a = "example string"
    condition:
        $a //there is only one condition, no need to overcomplicate it
}

/* ORIGINAL RULE
rule FauxRule_ad
{
    strings:
        $a = "example string"
    condition:
        (any of them) and (all of them) 
}
*/