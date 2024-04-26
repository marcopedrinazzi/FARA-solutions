import "math"
rule FauxRule_ag
{
    strings:
        $a = "example string"
    condition:
        $a and math.entropy(0, filesize )>=11
}

//Performance issues
//ISSUE: 1 ID: CF1 TYPE: performance LEVEL: 2 RULE: FauxRule_ag ISSUE: The rule uses a condition that includes a calculation over the full file content (hash, mathematical calculation) or almost the full size of the file ELEMENT: {'condition_segment': '(0, filesize )'} RECOMMENDATION: Make sure that the calculation appears last in the condition to make use of the short circuit evaluation. (DON'T: 'math.entropy(500, filesize-500) >= 5.7 and all of them' DO: 'all of them and math.entropy(500, filesize-500) >= 5.7'
//ISSUE: 2 ID: CF2 TYPE: performance LEVEL: 2 RULE: FauxRule_ag ISSUE: The rule uses a condition that a mathematical calculation, which has a performance impact ELEMENT: {'condition_segment': 'condition:\n        $a and math.entropy(0, filesize )>=11\n'} RECOMMENDATION: Avoid mathematical calculations in the condition

/*ORIGINAL RULE

import "math"
rule FauxRule_ag
{
    strings:
        $a = "example string"
    condition:
        $a and math.entropy(0, filesize )>=11
}

*/