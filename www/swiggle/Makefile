# $OpenBSD: Makefile,v 1.4 2019/07/12 20:51:06 sthen Exp $

COMMENT = 		simple web image gallery generator

DISTNAME =		swiggle-0.4
REVISION =		0

CATEGORIES =		www graphics

HOMEPAGE =		http://homepage.univie.ac.at/l.ertl/swiggle/
MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

PERMIT_PACKAGE =	Yes

WANTLIB =  c exif iconv intl jpeg

MASTER_SITES =		${HOMEPAGE}/files/

LIB_DEPENDS =		graphics/libexif \
			graphics/jpeg

MAKE_FLAGS =		CC=${CC}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/swiggle ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/swiggle
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/swiggle/

.include <bsd.port.mk>
