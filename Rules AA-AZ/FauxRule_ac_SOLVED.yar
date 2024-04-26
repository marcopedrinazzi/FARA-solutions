import "pe"
rule FauxRule_ac
{
    strings:
        $a = {01 02 03}
    condition:
        $a at pe.entrypoint // we need to know if the string is at some specific offset on the file or at some virtual address within the process address space. In such situations the operator at is what we need.
}


//The entrypoint variable is deprecated, you should use the equivalent pe.entry_point from the PE module instead. Starting with YARA 3.0 you'll get a warning if you use entrypoint and it will be completely removed in future versions.
//fix: pe.entrypoint

/*ORIGINAL RULE
rule FauxRule_ac
{
    strings:
        $a = {01 02 03}
    condition:
        $a at entrypoint
}
*/