ifndef spec
spec=python-pysnmp-mibs.spec
endif

tar:
	rpm -q rpmdevtools || dnf install rpmdevtools -y
	spectool -g -R $(spec)

srpm: tar
	rpmbuild -bs --define "_topdir `pwd`/rpmbuild" $(spec)
ifdef outdir
	cp ./rpmbuild/SRPMS/* $(outdir)
endif
