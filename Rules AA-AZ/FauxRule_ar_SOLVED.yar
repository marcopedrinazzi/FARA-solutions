rule FauxRule_ar
{
    strings:
        $a = "example string"

    condition:
        $a at 0xFFFFFFFFFFFFFFFF // this address is the maximum possible 64-bit memory address, which is beyond the addressable memory range of most systems. => so it's invalid
}