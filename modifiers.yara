rule modifiers
{
        strings:
                $s1 = "yara" nocase
                $s2 = "YARA" wide
                $s3 = "Loki" fullword
        condition:
                any of them
}
