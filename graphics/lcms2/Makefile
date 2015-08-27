# $OpenBSD: Makefile,v 1.12 2015/08/27 08:57:46 ajacoutot Exp $

COMMENT =		color management library

DISTNAME =		lcms2-2.7
CATEGORIES =		graphics
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=lcms/}

SHARED_LIBS +=  lcms2                1.1      # 2.7

HOMEPAGE =		http://www.littlecms.com/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c jpeg m pthread tiff z

LIB_DEPENDS =	graphics/tiff

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED}
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
