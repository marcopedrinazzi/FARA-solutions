rule FauxRule_am
{
    strings:
        $a = "example string"

    condition:
        $a in (0..0) //fix it should be used at 0
}
