tar:
	spectool -g -R python-pysnmp-mibs.spec

srpm: tar
	rpmbuild -bs python-pysnmp-mibs.spec
