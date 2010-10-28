# $OpenBSD: Makefile,v 1.5 2010/10/28 11:06:46 espie Exp $

COMMENT =		database of packages for use with locate(1)

DISTNAME =		pkglocatedb-0.1
DISTFILES =

CATEGORIES =		databases

PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

do-build:
	pkg_mklocatedb -a -p ${PORTSDIR} > ${WRKBUILD}/pkglocatedb

do-install:
	${INSTALL_DATA} ${WRKBUILD}/pkglocatedb ${PREFIX}/share
	${SUBST_CMD} -o root -g bin -c ${FILESDIR}/pkglocate ${PREFIX}/bin/pkglocate
	chmod ${BINMODE} ${PREFIX}/bin/pkglocate

NO_REGRESS =		Yes

.include <bsd.port.mk>
