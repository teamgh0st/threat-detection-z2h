rule text_strings
{
        strings:
                $text_string = "Loki\n"
        condition:
                $text_string
}
