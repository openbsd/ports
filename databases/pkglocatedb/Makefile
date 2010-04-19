# $OpenBSD: Makefile,v 1.3 2010/04/19 09:21:31 espie Exp $

COMMENT =		database of packages for use with locate(1)

# if PKGNAME changes, infrastructure/package/check-plist should be synced
DISTNAME =		pkglocatedb-0.0
DISTFILES =

CATEGORIES =		databases

PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

do-build:
	unset SUBDIR || true; \
	pkg_mklocatedb -a -p ${PORTSDIR} > ${WRKBUILD}/pkglocatedb

do-install:
	${INSTALL_DATA} ${WRKBUILD}/pkglocatedb ${PREFIX}/share

NO_REGRESS =		Yes
NO_CHECKSUM =		Yes

.include <bsd.port.mk>
