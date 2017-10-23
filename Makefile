temp := ba-project-template

zip:
	mkdir -p $(temp)
	cp LICENSE README.org $(temp)
	cp -r template $(temp)
	cp -r doc $(temp)
	cp -r sty/ $(temp)/template
	cp -r sty/ $(temp)/doc
	cp -r bib/ $(temp)/doc/bib
	cp -r bib/ $(temp)/template/bib
	ruby -pi.bak -e "gsub(/\{\.\.\/sty\/\}/, '{sty/}')" -e "gsub(/{\.\.\/bib/, '{bib')" $(temp)/template/template.tex $(temp)/doc/badoc.tex
	rm -rf $(temp)/template/*.bak
	rm -rf $(temp)/doc/*.bak
	zip -r $(temp).zip $(temp)/
	rm -rf $(temp)/
	mv $(temp).zip release/

push-to-github:
	git push -u github master

