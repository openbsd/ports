COMMENT =	accessing DVD files

VER =		6.1.3
DISTNAME =	libdvdread-${VER}
CATEGORIES =	devel
SITES =		https://download.videolan.org/pub/videolan/libdvdread/${VER}/
EXTRACT_SUFX =	.tar.bz2

SHARED_LIBS =	dvdread		9.0

HOMEPAGE =	http://dvdnav.mplayerhq.hu/

MAINTAINER =	Marc Espie <espie@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =	dvdcss

# dlopen'd
LIB_DEPENDS =	converters/libdvdcss>=1.4.3

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS =--disable-apidoc

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=	-std=gnu99
.endif

.include <bsd.port.mk>
