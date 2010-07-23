# $OpenBSD: Makefile,v 1.1.1.1 2010/07/23 16:05:40 phessler Exp $
COMMENT =		library for reading RAW files

DISTNAME =		LibRaw-0.9.1
PKGNAME =		${DISTNAME:L}
CATEGORIES =		graphics

HOMEPAGE =		http://www.libraw.org/

# LGPL v2.1 OR CDDL v1.0 OR their own
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://www.libraw.org/data/
NO_REGRESS =		Yes

#WANTLIB +=		c m pthread stdc++

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/libraw/
	${INSTALL_DATA} ${WRKBUILD}/libraw/* ${PREFIX}/include/libraw/
	${INSTALL_SCRIPT} ${WRKBUILD}/lib/libraw* ${PREFIX}/lib

.include <bsd.port.mk>
