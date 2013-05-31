# gnerate tags for php project
# adapted from
# http://www.mwop.net/blog/134-exuberant-ctags-with-PHP-in-Vim.html

ctags-exuberant -f tags \
	-h \".php\" -R \
	--exclude=\"\.svn\" \
	--totals=yes \
	--tag-relative=yes \
	--PHP-kinds=+cf \
	--regex-PHP='/abstract class ([^ ]*)/\1/c/' \
	--regex-PHP='/interface ([^ ]*)/\1/c/' \
	--regex-PHP='/(public |static |abstract |protected |private )+function ([^ (]*)/\2/f/'
