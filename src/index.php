<?php

echo exec('whoami') . "<br>";

if (is_readable('/var/www/html/check_group.php'))
    echo "Group File Readable OK<br>";
else
    echo "Group File KO: Not Readable<br>";

if (is_readable('/var/www/html/check_root.php'))
    echo "Root File Readable OK<br>";
else
    echo "Root File KO: Not Readable<br>";

if(!is_readable('/var/www/html/group_test_dir')) {
    echo "Nope. Group Dir Not readable!<br>";
} else {
    echo "Group Dir Readable!<br>";
}

if(!is_readable('/var/www/html/root_test_dir')) {
    echo "Nope. Root Dir Not readable!";
} else {
    echo "Root Dir Readable!";
}