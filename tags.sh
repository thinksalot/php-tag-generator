# generate tags for php project
# originally from
# http://www.mwop.net/blog/134-exuberant-ctags-with-PHP-in-Vim.html

# file which contains a list of files to proce
fileList=indexme

# finds files, excluding certain folders and saves it to alist
find . \
	-name '*.php' \
	! -path '*external*' \
	! -path '*doc_generator*' \
	! -path '*tests/cache*' \
	! -path '*tests/vendor*' \
	! -path '*firefor-profile*' > $fileList

# build ctags from the list
ctags-exuberant -L $fileList \
    --fields=+l \
	--totals=yes \
	--tag-relative=yes \
	--PHP-kinds=+cf \
	--regex-PHP='/abstract class ([^ ]*)/\1/c/' \
	--regex-PHP='/interface ([^ ]*)/\1/c/' \
	--regex-PHP='/(public |static |abstract |protected |private )+function ([^ (]*)/\2/f/' \
