# $OpenBSD: Makefile,v 1.8 2005/09/11 07:27:51 espie Exp $

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
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--disable-pixmap

.include <bsd.port.mk>
