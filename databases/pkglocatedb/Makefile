# $OpenBSD: Makefile,v 1.9 2011/09/18 19:29:58 espie Exp $

COMMENT =		database of packages for use with locate(1)

DISTNAME =		pkglocatedb-0.3
DISTFILES =

CATEGORIES =		databases

PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

BUILD_DEPENDS =	databases/sqlports,-compact>=1.18 \
		databases/sqlite3

do-build: 
	@:

do-install:
	${INSTALL_DATA} ${WRKBUILD}/pkglocatedb ${PREFIX}/share
	${SUBST_CMD} -o root -g bin -c ${FILESDIR}/pkglocate ${PREFIX}/bin/pkg_locate
	chmod ${BINMODE} ${PREFIX}/bin/pkg_locate
	ln -s ${TRUEPREFIX}/bin/pkg_locate ${PREFIX}/bin/pkglocate

NO_REGRESS =		Yes

.include <bsd.port.mk>

# XXX cheat a bit to avoid having two makefiles
do-build: ${WRKBUILD}/pkglocatedb

${WRKBUILD}/subdirlist:
	sqlite3 ${LOCALBASE}/share/sqlports-compact 'select min(paths.fullpkgpath||ports.pseudo_flavor) from paths join ports on paths.id=ports.fullpkgpath group by fullpkgname order by paths.fullpkgpath' |sed -e s@x11/xscreensaver,-gle@x11/xscreensaver,,-gle@ >$@
${WRKBUILD}/pkglocatedb: ${WRKBUILD}/subdirlist
	SUBDIRLIST=${WRKBUILD}/subdirlist pkg_mklocatedb -a -p ${PORTSDIR} > $@
