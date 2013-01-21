# $OpenBSD: Makefile,v 1.15 2013/01/21 19:00:50 jasper Exp $

PKG_ARCH=		*

COMMENT=		gui to configure devilspie rules

MODPY_EGG_VERSION=	0.5
DISTNAME=		gdevilspie-${MODPY_EGG_VERSION}
REVISION=		5
EPOCH=			0

CATEGORIES=		x11 sysutils

HOMEPAGE=		http://code.google.com/p/gdevilspie/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://gdevilspie.googlecode.com/files/
EXTRACT_SUFX=		.tar.bz2

MODULES=		lang/python

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/py-xdg \
			x11/devilspie \
			x11/py-gtk2

NO_REGRESS=		Yes

.include <bsd.port.mk>
