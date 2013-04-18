# $OpenBSD: Makefile,v 1.23 2013/04/18 12:00:45 gonzalo Exp $

COMMENT=	simple login manager

DISTNAME=	slim-1.3.5

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

WANTLIB += X11 Xft Xmu Xrender c ck-connector dbus-1 fontconfig
WANTLIB += freetype jpeg m png pthread stdc++ z

CONFIGURE_ARGS= -DUSE_CONSOLEKIT="yes"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/slim.1 ${WRKSRC}/slim.conf

.include <bsd.port.mk>
