#$OpenBSD: Makefile,v 1.26 2014/11/29 07:35:40 brad Exp $

COMMENT =	accessing DVD files

VER =		5.0.0
DISTNAME =	libdvdread-${VER}
CATEGORIES =	devel
MASTER_SITES =	http://download.videolan.org/pub/videolan/libdvdread/${VER}/
EXTRACT_SUFX =	.tar.bz2

SHARED_LIBS =	dvdread		6.0

HOMEPAGE =	http://dvdnav.mplayerhq.hu/

MAINTAINER =	Marc Espie <espie@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	dvdcss

# dlopen'd
LIB_DEPENDS =	converters/libdvdcss>=1.3.0

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS =--disable-apidoc

.include <bsd.port.mk>
