# $OpenBSD: Makefile,v 1.1.1.1 2002/09/01 09:23:11 couderc Exp $

COMMENT=		"Virtual desktop manager for X11"

VERSION=0.3.3
DISTNAME=		waimea-${VERSION}
CATEGORIES=		x11

HOMEPAGE=		http://waimea.sourceforge.net

MAINTAINER=		Damien Couderc <couderc@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=waimea/}

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-pixmap

post-install:
	${INSTALL_DATA} ${WRKSRC}/data/waimearc.example ${PREFIX}/share/Waimea

.include <bsd.port.mk>
