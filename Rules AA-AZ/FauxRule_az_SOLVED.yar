rule FauxRule_az
{
    strings:
        $a = "example string"
        $b = /example str(i|I)ng/ ascii

    condition:
        $a and not $b //i think the condition should only $b in order to have a meaningful yara rule (so it matches $a but also if the i in string is uppercase), only $a could work too but it doesnt make sense in my opinion
}

/*ORIGINAL RULE

rule FauxRule_az
{
    strings:
        $a = "example string"
        $b = /example str(i|I)ng/ ascii wide nocase

    condition:
        $a and not $b 
}


*/