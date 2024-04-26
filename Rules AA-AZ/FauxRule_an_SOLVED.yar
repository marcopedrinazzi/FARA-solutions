rule FauxRule_an
{
    strings:
        $a = "example string" //not needed 

    condition:
        filesize > 1KB and filesize < 400000000KB
}