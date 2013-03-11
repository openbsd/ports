# $OpenBSD: Makefile,v 1.5 2013/03/11 11:10:53 espie Exp $

COMMENT =	color management library

DISTNAME =	lcms2-2.4
SHARED_LIBS =	lcms2	0.2
CATEGORIES =	graphics
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=lcms/}

HOMEPAGE =	http://www.littlecms.com/

LIB_DEPENDS +=	graphics/jpeg \
		graphics/tiff

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c jpeg m tiff z

USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

DOCDIR =		${PREFIX}/share/doc/lcms2

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	cd ${WRKSRC}/doc; \
	${INSTALL_DATA} LittleCMS2.??API.pdf ${DOCDIR}/api.pdf; \
	${INSTALL_DATA} LittleCMS2*Plugin?API.pdf ${DOCDIR}/plugin-api.pdf; \
	${INSTALL_DATA} LittleCMS2*tutorial.pdf ${DOCDIR}/tutorial.pdf

.include <bsd.port.mk>
