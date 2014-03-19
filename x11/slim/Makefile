# $OpenBSD: Makefile,v 1.29 2014/03/19 13:53:29 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	simple login manager

DISTNAME=	slim-1.3.6
REVISION=	3

SHARED_LIBS=	slim	0.0 # 1.3

CATEGORIES=	x11
MAINTAINER =	Landry Breuil <landry@openbsd.org>
HOMEPAGE=	http://slim.berlios.de/

MASTER_SITES=	${MASTER_SITE_BERLIOS:=slim/}

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	devel/cmake
LIB_DEPENDS=	graphics/jpeg \
		sysutils/consolekit \
		x11/dbus \
		graphics/png

WANTLIB += X11 Xft Xmu Xrandr Xrender c ck-connector dbus-1
WANTLIB += fontconfig freetype jpeg m png pthread stdc++ z

CONFIGURE_ARGS= -DUSE_CONSOLEKIT:Bool=Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/slim.1 ${WRKSRC}/slim.conf

.include <bsd.port.mk>
