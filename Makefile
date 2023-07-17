tar:
	spectool -g -R python-pysnmp-mibs.spec

srpm: tar
	rpmbuild -bs --define "_topdir `pwd`/rpmbuild" python-pysnmp-mibs.spec
ifdef outdir
	cp ./rpmbuild/SRPMS/* $(outdir)
endif
