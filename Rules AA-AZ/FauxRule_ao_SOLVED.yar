rule FauxRule_ao
{
    strings:
        $a = "example string"

    condition:
        $a and filesize < 0KB //filesize < 0KB should be removed as implies a file with no content
}
