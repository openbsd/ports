# $OpenBSD: Makefile,v 1.6 2004/12/06 23:11:34 matthieu Exp $

COMMENT=		"Virtual desktop manager for X11"

VERSION=		0.4.0
DISTNAME=		waimea-${VERSION}
PKGNAME=		${DISTNAME}p0
CATEGORIES=		x11

HOMEPAGE=		http://www.waimea.org

MAINTAINER=		Damien Couderc <couderc@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=waimea/}

USE_X11=		Yes
WANTLIB=		SM ICE X11 Xext Xinerama Xrender Xrandr Xft stdc++ m c
USE_GMAKE=		Yes
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--disable-pixmap

.include <bsd.port.mk>
