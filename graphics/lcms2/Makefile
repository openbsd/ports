# $OpenBSD: Makefile,v 1.17 2019/10/01 18:44:42 kurt Exp $

COMMENT =		color management library

DISTNAME =		lcms2-2.9
REVISION =		0
CATEGORIES =		graphics
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=lcms/}

SHARED_LIBS +=  lcms2                1.2      # 2.8

HOMEPAGE =		http://www.littlecms.com/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c jpeg m pthread tiff z

LIB_DEPENDS =	graphics/tiff

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

DOCDIR =		${PREFIX}/share/doc/lcms2

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	cd ${WRKSRC}/doc; \
	${INSTALL_DATA} LittleCMS2.??API.pdf ${DOCDIR}/api.pdf; \
	${INSTALL_DATA} LittleCMS2*Plugin?API.pdf ${DOCDIR}/plugin-api.pdf; \
	${INSTALL_DATA} LittleCMS2*tutorial.pdf ${DOCDIR}/tutorial.pdf

.include <bsd.port.mk>
