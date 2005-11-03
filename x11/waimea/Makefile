# $OpenBSD: Makefile,v 1.9 2005/11/03 18:28:56 naddy Exp $

COMMENT=		"Virtual desktop manager for X11"

VERSION=		0.4.0
DISTNAME=		waimea-${VERSION}
PKGNAME=		${DISTNAME}p1
CATEGORIES=		x11

HOMEPAGE=		http://www.waimea.org

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=waimea/}

USE_X11=		Yes
WANTLIB=		SM ICE X11 Xext Xinerama Xrender Xrandr Xft stdc++ m c \
			freetype fontconfig
USE_GMAKE=		Yes
AUTOCONF_VERSION=	2.52
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--disable-pixmap

.include <bsd.port.mk>
