//maths is an unknown module, the way it is imported is correct though, it should be math the correct name. fix remove it since it's not needed
rule FauxRule_af
{
    strings:
        $a = "example string"
    condition:
        $a
}

/*ORIGINAL RULE
import "maths"
rule FauxRule_af
{
    strings:
        $a = "example string"
    condition:
        $a
}
*/