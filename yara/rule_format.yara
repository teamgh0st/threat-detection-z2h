rule example
{
        meta:
                author = "Jay"
                date = "2023"
                description = "This is my example of rule structure"
                reference = "Here you would include a link to a reference"
                md5hash = "<hash>"
                sha1hash = "<hash>"
                sha265hash = "<hash>"
        strings:
                $s1 = "Hello"
                $s2 = "World"
        condition:
                ($s1 or $s2) and filesize < 20KB
}
