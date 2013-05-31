This tiny script allows you to generate ctags for php projects.
Originally from: http://www.mwop.net/blog/134-exuberant-ctags-with-PHP-in-Vim.html

## Installation:

Clone repository

Add a bash alias to the script:

    alias phptags='/path/to/tags.sh'

## Usage:

Go to your php project dir:

    cd /var/www/my-php-project/

Run command:

    phptags

Now tags will be generated in `tags` file in project root

Insert in .vimrc:

     set tags=./tags;

Jump through tags the usual way
