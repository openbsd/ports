# $OpenBSD: Makefile,v 1.1.1.1 2010/01/08 14:00:49 sthen Exp $

COMMENT =		database of packages for use with locate(1)

DISTNAME =		pkglocatedb-0.0
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

NO_REGRESS =		Yes
NO_CHECKSUM =		Yes

.include <bsd.port.mk>
