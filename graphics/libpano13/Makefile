# $OpenBSD: Makefile,v 1.19 2020/06/02 15:29:58 espie Exp $

COMMENT =		library for processing panoramic images
DISTNAME =		libpano13-2.9.19
REVISION =		0

SHARED_LIBS +=		pano13               3.0

CATEGORIES =		graphics
HOMEPAGE =		http://panotools.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=		c jpeg png tiff z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=panotools/}

MODULES =		devel/cmake

LIB_DEPENDS =		graphics/jpeg \
			graphics/png \
			graphics/tiff

.include <bsd.port.mk>
