#$OpenBSD: Makefile,v 1.30 2019/07/12 20:44:38 sthen Exp $

COMMENT =	accessing DVD files

VER =		6.0.1
DISTNAME =	libdvdread-${VER}
CATEGORIES =	devel
MASTER_SITES =	https://download.videolan.org/pub/videolan/libdvdread/${VER}/
EXTRACT_SUFX =	.tar.bz2

SHARED_LIBS =	dvdread		7.0

HOMEPAGE =	http://dvdnav.mplayerhq.hu/

MAINTAINER =	Marc Espie <espie@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =	dvdcss

# dlopen'd
LIB_DEPENDS =	converters/libdvdcss>=1.4.2

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS =--disable-apidoc

.include <bsd.port.mk>
