XELATEX=docker run --rm -v $(PWD):/doc/ -w /doc -it thomasweise/docker-texlive-full xelatex

rick-haines.pdf: rick-haines.tex sections/*.tex sections/headshot.jpg
	$(XELATEX) $<

clean:
	rm -f rick-haines.pdf rick-haines.log rick-haines.aux
