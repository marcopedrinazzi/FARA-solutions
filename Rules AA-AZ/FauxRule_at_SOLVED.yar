rule FauxRule_at
{
    strings:
        $a = "example string"
		
    condition:
        $a and new_file //and new_file to remove it to fix it
}