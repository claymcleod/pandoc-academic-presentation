pdf:
	@cp ./assets/styles/*.sty ./
	pandoc presentation.md -t beamer --template assets/templates/beamer.template -s --latex-engine=xelatex -V theme:m --slide-level 2 -o presentation.pdf
	@rm -f *.sty

revealjs:
	pandoc -s presentation.md -V revealjs-url=http://cdn.bootcss.com/reveal.js/3.1.0/ -V theme=serif -t revealjs --slide-level 2 -o presentation.reveal.html
