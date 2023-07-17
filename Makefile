ifndef spec
spec=python-pysnmp-mibs.spec
endif


tar:
	rpm -q rpmdevtools || dnf install rpmdevtools -y
	@set -e; spectool -g -R $(spec)

srpm: tar
	@set -e; rpmbuild -bs --define "_topdir `pwd`/rpmbuild" $(spec)
ifdef outdir
	cp ./rpmbuild/SRPMS/* $(outdir)
endif
