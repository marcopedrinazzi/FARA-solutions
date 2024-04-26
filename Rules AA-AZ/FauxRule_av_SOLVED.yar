rule FauxRule_av
{
    strings:
        $a = "example string" //fix rename to b
    condition:
        $b //fix the var above should be called b
}