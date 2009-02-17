# $OpenBSD: Makefile,v 1.1.1.1 2009/02/17 00:16:04 sthen Exp $

COMMENT =	patch-set and bug tracking system for CVS

DISTNAME =	cvstrac-2.0.1
CATEGORIES =	devel www

HOMEPAGE =	http://www.cvstrac.org/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${HOMEPAGE}

WANTLIB =	c m
LIB_DEPENDS =	sqlite3::databases/sqlite3

USE_GMAKE =	Yes
MAKE_FILE =	bsd-gcc.mk
MAKE_FLAGS =	BCC="${CC} ${CFLAGS} -I${LOCALBASE}/include" \
		TCC="${CC} ${CFLAGS} -I${LOCALBASE}/include" \
		LIBSQLITE="`pkg-config --libs sqlite3` -lm"

NO_REGRESS =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cvstrac ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cvstrac
	${INSTALL_DATA} ${WRKSRC}/index.html ${WRKSRC}/howitworks.html \
	    ${PREFIX}/share/doc/cvstrac

.include <bsd.port.mk>
