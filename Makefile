XELATEX=docker run --rm -v $(PWD):/doc/ -w /doc -it thomasweise/docker-texlive-full xelatex

rick-haines.pdf: awesome-cv.cls rick-haines.tex sections/*.tex sections/headshot.jpg
	$(XELATEX) rick-haines.tex sections/*.tex

clean:
	rm -f rick-haines.pdf rick-haines.log rick-haines.aux
