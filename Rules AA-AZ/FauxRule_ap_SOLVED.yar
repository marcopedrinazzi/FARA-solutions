rule FauxRule_ap
{
    strings:
        $a = "example string" //fix added " "

    condition:
        $a at filesize + 1 //remove + 1 (filesize + 1) is not a valid location
}