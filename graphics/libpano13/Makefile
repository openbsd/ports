# $OpenBSD: Makefile,v 1.20 2020/08/02 14:58:09 naddy Exp $

COMMENT =		library for processing panoramic images
DISTNAME =		libpano13-2.9.19
REVISION =		1

SHARED_LIBS +=		pano13               3.0

CATEGORIES =		graphics
HOMEPAGE =		http://panotools.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=		c jpeg m png tiff z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=panotools/}

MODULES =		devel/cmake

LIB_DEPENDS =		graphics/jpeg \
			graphics/png \
			graphics/tiff

post-extract:
		perl -pi -e 's/\r\n/\n/g' ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
