# $OpenBSD: Makefile,v 1.19 2021/01/10 21:45:29 sthen Exp $

COMMENT =		color management library

DISTNAME =		lcms2-2.11
CATEGORIES =		graphics
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=lcms/}

SHARED_LIBS +=  lcms2                1.3      # 2.10

HOMEPAGE =		https://www.littlecms.com/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c jpeg lzma m pthread tiff z zstd

LIB_DEPENDS =	graphics/tiff

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

DEBUG_PACKAGES =	${BUILD_PACKAGES}

DOCDIR =		${PREFIX}/share/doc/lcms2

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	cd ${WRKSRC}/doc; \
	${INSTALL_DATA} LittleCMS2.???API.odt ${DOCDIR}/api.odt; \
	${INSTALL_DATA} LittleCMS2*Plugin?API.odt ${DOCDIR}/plugin-api.odt; \
	${INSTALL_DATA} LittleCMS2*tutorial.odt ${DOCDIR}/tutorial.odt

.include <bsd.port.mk>
