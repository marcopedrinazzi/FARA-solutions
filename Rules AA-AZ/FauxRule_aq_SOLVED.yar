rule FauxRule_aq
{
    strings:
        $a = "example string" //fix added ""
        $b = "malware"

    condition:
        #a > #b 
}

//not a very useful condition/rule but ok for the exercise purposes