# $OpenBSD: Makefile,v 1.31 2019/07/12 20:47:01 sthen Exp $

COMMENT =	color management library

DISTNAME =	lcms-1.19
CATEGORIES =	graphics
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=lcms/}

SHARED_LIBS +=  lcms                 2.0      # 1.19

HOMEPAGE =	http://www.littlecms.com/

LIB_DEPENDS +=	graphics/jpeg \
		graphics/tiff

# MIT
PERMIT_PACKAGE =	Yes
WANTLIB =		c m z jpeg tiff

CONFIGURE_STYLE = 	gnu
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

#WRKDIST =		${WRKDIR}/lcms-1.18

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lcms
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/lcms

.include <bsd.port.mk>
