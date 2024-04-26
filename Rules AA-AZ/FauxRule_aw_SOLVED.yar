rule FauxRule_aw
{
    strings:
        $a = "example string"
		
    condition:
        not $a //i dont think its very useful to check for the absence of a string, typically you look for the presence of a string
}
