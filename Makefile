
build: components index.css
	@component build

index.css: index.styl
	rm -f index.css
	./node_modules/.bin/styl < index.styl > index.css

components: component.json
	@component install

clean:
	rm -fr build components index.css

.PHONY: clean
