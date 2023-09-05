rule hex // this is a comment
{
        strings:
                $r1 = { 69 73 20 ?? ?? 6F 67 } // wildcards will allow any values
                $r2 = { 74 ?0 62 } // single wildcard
                $r3 = { 6D 6F [3-4] 0D 0D } // range of 3-4 between
                $r4 = { 50 45 [2] 64 } // specifically 2
                $r5 = { 4D ( 5A | 90 ) } // will detect 4D 5A or 4D 90
        condition: // all strings must be met to detect
                all of them
}
