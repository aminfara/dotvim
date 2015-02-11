.PHONY: help delete neobundle clean install reinstall cleanup-bundles update
default: help

delete:
	rm -rf bundle
	rm -rf backup

neobundle:
	if [ ! -d bundle/neobundle.vim ]; then \
	  mkdir -p bundle && cd bundle && git clone https://github.com/Shougo/neobundle.vim.git; \
	fi

clean:
	vim -u bundles.vim +NeoBundleClean

install: neobundle
	vim -u bundles.vim +NeoBundleInstall

reinstall: delete install

cleanup-bundles:
	ls bundle | while read b;do (cd bundle/$$b && git clean -f);done

update: cleanup-bundles neobundle
	vim -u bundles.vim +NeoBundleUpdate
help:
	@echo 'COMMON:'
	@echo 'make help          : (default) print this message'
	@echo 'make install       : make sure all bundles installed'
	@echo 'make reinstall     : [DANGEROUS!] - remove bundles and reinstall'
	@echo 'make update update : installed bundles'
	@echo 'make clean         : cleans removed plugins'
