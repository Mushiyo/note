#!/bin/bash
echo "build public directory"
find ./* -type d ! -path "./.git*" ! -path "./pandoc*" -exec mkdir -p public/{} {} \;
echo "build web pages with Pandoc"
find CS -name \*.md -type f -exec pandoc --template=pandoc/toc-sidebar.html -B pandoc/nav1 --toc --toc-depth=4 -f markdown_github-ascii_identifiers -o public/{}.html {} \;
find language -name \*.md -type f -exec pandoc --template=pandoc/toc-sidebar.html -B pandoc/nav1 --toc --toc-depth=4 -f markdown_github-ascii_identifiers -o public/{}.html {} \;
find other -name \*.md -type f -exec pandoc --template=pandoc/toc-sidebar.html -B pandoc/nav1 --toc --toc-depth=4 -f markdown_github-ascii_identifiers -o public/{}.html {} \;
find math -name \*.md -type f -exec pandoc --template=pandoc/toc-sidebar.html -B pandoc/nav1 --toc --toc-depth=4 -f markdown_github-ascii_identifiers+tex_math_single_backslash --mathjax -o public/{}.html {} \;
find programming -name \*.md -type f -exec pandoc --template=pandoc/toc-sidebar.html -B pandoc/nav1 --toc --toc-depth=4 -f markdown_github-ascii_identifiers -o public/{}.html {} \;
find . -depth -name '*.md.html' -execdir bash -c 'mv -i "$1" "${1//md.html/html}"' bash {} \;
pandoc index.md --template=pandoc/toc-sidebar.html -B pandoc/nav0 -f markdown_github-ascii_identifiers -o public/index.html;
echo "build finished"