# $OpenBSD: Makefile,v 1.2 2002/10/18 02:05:19 mark Exp $

COMMENT=		"Virtual desktop manager for X11"

VERSION=0.3.5
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

.include <bsd.port.mk>
