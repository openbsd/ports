# $OpenBSD: Makefile,v 1.5 2015/10/29 18:25:31 ajacoutot Exp $

COMMENT =		database-independent abstraction layer
DISTNAME =		libdbi-0.8.4
CATEGORIES =		databases
SHARED_LIBS +=		dbi 0.0 # .0.5
REVISION =		0

HOMEPAGE =		http://libdbi.sourceforge.net/
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libdbi/}

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	gnu
WANTLIB =		m

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libdbi
	${INSTALL_DATA} ${WRKSRC}/doc/*.pdf ${PREFIX}/share/doc/libdbi
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libdbi/driver-guide
	${INSTALL_DATA} ${WRKSRC}/doc/driver-guide/*.html \
		${PREFIX}/share/doc/libdbi/driver-guide
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libdbi/programmers-guide
	${INSTALL_DATA} ${WRKSRC}/doc/programmers-guide/*.html \
		${PREFIX}/share/doc/libdbi/programmers-guide

.include <bsd.port.mk>
