rule regex
{
        strings:
                $r1 = /loki/i // case insensitive
                $r2 = /Loki/ // exact match
                $r3 = /Snort./s // . can match newline characters
                $r4 = /[a-zA-Z]{8}/ // will match strings that use upper or lowercase for exactly 9 letters
                $r5 = /(Thor|Zeek)/
        condition:
                all of them
                
}
