COMMENT =		database-independent abstraction layer
DISTNAME =		libdbi-0.9.0
CATEGORIES =		databases
SHARED_LIBS +=		dbi 1.0
REVISION =		0

HOMEPAGE =		https://libdbi.sourceforge.net/
SITES =			${SITE_SOURCEFORGE:=libdbi/}

# LGPLv2.1
PERMIT_PACKAGE =	Yes

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
