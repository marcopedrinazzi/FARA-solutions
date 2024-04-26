rule FauxRule_ai
{
    strings:
        $a = "example stríng" wide //added wide for utf16 specificaation
    condition:
        $a
}

/* ORIGINAL RULE
rule FauxRule_ai
{
    strings:
        $a = "example stríng" //add wi
    condition:
        $a
}
*/