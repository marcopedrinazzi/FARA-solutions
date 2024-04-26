rule FauxRule_ay
{
    strings:
        $a = "example string"' //fix remove the '
		
    condition:
        $a
}