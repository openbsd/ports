# $OpenBSD: Makefile,v 1.13 2009/08/11 08:42:09 ajacoutot Exp $

COMMENT=		Virtual desktop manager for X11

VERSION=		0.4.0
DISTNAME=		waimea-${VERSION}
PKGNAME=		${DISTNAME}p4
CATEGORIES=		x11

HOMEPAGE=		http://www.freedesktop.org/wiki/Software_2fwaimea

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=waimea/}

USE_X11=		Yes
WANTLIB=		SM ICE X11 Xau Xdmcp Xext Xinerama Xrender Xrandr \
			Xft expat z stdc++ m c freetype fontconfig pthread-stubs xcb

USE_GMAKE=		Yes
AUTOCONF_VERSION=	2.52
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--disable-pixmap

.include <bsd.port.mk>
