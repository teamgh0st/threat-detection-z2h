rule hex_strings
{
        strings:
                $hex_string = { 4D 5A }
        condition:
                $hex_string
}
