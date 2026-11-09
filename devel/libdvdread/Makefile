COMMENT =	accessing DVD files

VER =		7.1.1
DISTNAME =	libdvdread-${VER}
CATEGORIES =	devel
SITES =		https://download.videolan.org/pub/videolan/libdvdread/${VER}/
EXTRACT_SUFX =	.tar.xz

SHARED_LIBS =	dvdread		9.1

HOMEPAGE =	http://dvdnav.mplayerhq.hu/

MAINTAINER =	Marc Espie <espie@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =	dvdcss

# dlopen'd
LIB_DEPENDS =	converters/libdvdcss>=1.4.3

MODULES=	devel/meson

.include <bsd.port.mk>
