rule FauxRule_au
{
    strings:
        $a = "example string"
        $b = "example string" //fix remove this line

    condition:
        $a and not $b //i think what the author meant to do is count that the number of occurences of "example string" is one and it can be done with #a == 1
}