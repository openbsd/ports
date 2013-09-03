# $OpenBSD: Makefile,v 1.1.1.1 2013/09/03 16:16:09 edd Exp $

COMMENT =		Amiga DMS unpacker
DISTNAME =		xdms-1.3.2
EXTRACT_SUFX =		.tar.bz2
CATEGORIES =		archivers emulators

HOMEPAGE =		http://zakalwe.fi/~shd/foss/xdms/

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# public domain
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c

MASTER_SITES =		http://zakalwe.fi/~shd/foss/xdms/

USE_GMAKE =		Yes
CONFIGURE_STYLE =	simple
CONFIGURE_ENV +=	prefix=${PREFIX} DESTDIR=${DESTDIR}
MAKE_FLAGS +=		INSTALL=${INSTALL}
ALL_TARGET =		xdms

NO_TEST =		Yes

DOCDIR =	${PREFIX}/share/doc/xdms
do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/src/xdms ${PREFIX}/bin/
	${INSTALL_DATA} ${WRKBUILD}/xdms.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKBUILD}/COPYING ${DOCDIR}/
	${INSTALL_DATA} ${WRKBUILD}/ChangeLog.txt ${DOCDIR}/
	${INSTALL_DATA} ${WRKBUILD}/xdms.txt ${DOCDIR}/

.include <bsd.port.mk>
