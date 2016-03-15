#$OpenBSD: Makefile,v 1.28 2016/03/15 20:51:11 kili Exp $

COMMENT =	accessing DVD files

VER =		5.0.3
DISTNAME =	libdvdread-${VER}
REVISION =	0
CATEGORIES =	devel
MASTER_SITES =	http://download.videolan.org/pub/videolan/libdvdread/${VER}/
EXTRACT_SUFX =	.tar.bz2

SHARED_LIBS =	dvdread		6.1

HOMEPAGE =	http://dvdnav.mplayerhq.hu/

MAINTAINER =	Marc Espie <espie@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	dvdcss

# dlopen'd
LIB_DEPENDS =	converters/libdvdcss>=1.3.99

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS =--disable-apidoc

.include <bsd.port.mk>
