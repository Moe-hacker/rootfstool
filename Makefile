all :
	@echo "\033[1;38;2;254;228;208mRun \`sudo make install\` to install.\033[0m"
format :
	shfmt -i 2 -w rootfstool
install :
	install -m 777 rootfstool ${PREFIX}/bin/rootfstool
