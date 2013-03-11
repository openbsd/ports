# $OpenBSD: Makefile,v 1.22 2013/03/11 11:46:15 espie Exp $

COMMENT=	simple login manager

DISTNAME=	slim-1.3.4

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

WANTLIB=	X11 Xft Xmu Xrender fontconfig c m stdc++ z freetype jpeg png
WANTLIB +=	pthread dbus-1 ck-connector

CONFIGURE_ARGS= -DUSE_CONSOLEKIT="yes"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/slim.1 ${WRKSRC}/slim.conf

.include <bsd.port.mk>
