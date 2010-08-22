# $OpenBSD: Makefile,v 1.2 2010/08/22 12:12:26 phessler Exp $
COMMENT =		library for reading RAW files

V =			0.9.1
DISTNAME =		LibRaw-${V}
PKGNAME =		${DISTNAME:L}
REVISION =		0
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

pre-configure:
	@cp ${FILESDIR}/raw.pc ${WRKBUILD}
	@perl -pi -e 's,%%VERSION%%,${V},g' ${WRKBUILD}/raw.pc

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/libraw/
	${INSTALL_DATA} ${WRKBUILD}/libraw/* ${PREFIX}/include/libraw/
	${INSTALL_SCRIPT} ${WRKBUILD}/lib/libraw* ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig/
	${INSTALL_SCRIPT} ${WRKBUILD}/raw.pc ${PREFIX}/lib/pkgconfig/

.include <bsd.port.mk>
