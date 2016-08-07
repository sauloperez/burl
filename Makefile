
PREFIX = /usr/local
BIN = burl
DIR = ~/.burl/

install:
	cp -f bin/$(BIN) $(PREFIX)/bin/$(BIN)
	mkdir $(DIR)
	cp alias $(DIR)/alias
	source $(DIR)/alias

uninstall:
	rm -f $(PREFIX)/bin/$(BIN)
	rm -r $(DIR)

.PHONY: install uninstall
