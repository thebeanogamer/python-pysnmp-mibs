ifndef spec
spec=python-pysnmp-mibs.spec
endif

srpm:
	@set -e; rpmbuild -bs --define "_disable_source_fetch 0" $(spec)
ifdef outdir
	cp ./rpmbuild/SRPMS/* $(outdir)
endif
