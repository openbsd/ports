# $OpenBSD: Makefile,v 1.4 2003/03/29 15:02:21 couderc Exp $

COMMENT=		"Virtual desktop manager for X11"

VERSION=		0.4.0
DISTNAME=		waimea-${VERSION}
CATEGORIES=		x11

HOMEPAGE=		http://www.waimea.org

MAINTAINER=		Damien Couderc <couderc@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=waimea/}

MODULES=		gcc3
MODGCC3_ARCHES=		sparc64
MODGCC3_LANGS=		C++

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-pixmap

.include <bsd.port.mk>
