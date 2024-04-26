import "pe" //fixed it's not correct "import pe" and "import math"
import "math" //the import of both modules is not necessary
rule FauxRule_as
{
    strings:
        $a = "example string" //added ""

    condition:
        $a at 0
}