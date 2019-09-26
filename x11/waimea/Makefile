# $OpenBSD: Makefile,v 1.27 2019/09/26 10:36:53 cwen Exp $

COMMENT=		virtual desktop manager for X11

VERSION=		0.4.0
DISTNAME=		waimea-${VERSION}
REVISION=		10
CATEGORIES=		x11

HOMEPAGE=		https://www.freedesktop.org/wiki/Software/waimea

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 Xext Xft Xinerama Xrandr
WANTLIB += Xrender c m

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=waimea/}

COMPILER=		base-clang ports-gcc

AUTOCONF_VERSION=	2.52
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--disable-pixmap

.include <bsd.port.mk>
