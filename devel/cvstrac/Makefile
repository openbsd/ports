# $OpenBSD: Makefile,v 1.10 2019/07/12 20:44:07 sthen Exp $

COMMENT =	patch-set and bug tracking system for CVS

DISTNAME =	cvstrac-2.0.1
PKGNAME =	${DISTNAME}
REVISION =	4
CATEGORIES =	devel www

HOMEPAGE =	http://www.cvstrac.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

MASTER_SITES =	${HOMEPAGE}

WANTLIB =	c m sqlite3
LIB_DEPENDS =	databases/sqlite3

USE_GMAKE =	Yes
MAKE_FILE =	bsd-gcc.mk
MAKE_FLAGS =	BCC="${CC} ${CFLAGS} -I${LOCALBASE}/include" \
		TCC="${CC} ${CFLAGS} -I${LOCALBASE}/include" \
		LIBSQLITE="`pkg-config --libs sqlite3` -lm"

NO_TEST =	Yes

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/wikiinit.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cvstrac ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cvstrac
	${INSTALL_DATA} ${WRKSRC}/index.html ${WRKSRC}/howitworks.html \
	    ${PREFIX}/share/doc/cvstrac

.include <bsd.port.mk>
