# $OpenBSD: Makefile,v 1.17 2013/08/07 21:32:59 naddy Exp $

PKG_ARCH=		*

COMMENT=		gui to configure devilspie rules

MODPY_EGG_VERSION=	0.5
DISTNAME=		gdevilspie-${MODPY_EGG_VERSION}
REVISION=		6
EPOCH=			0

CATEGORIES=		x11 sysutils

HOMEPAGE=		https://code.google.com/p/gdevilspie/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://gdevilspie.googlecode.com/files/
EXTRACT_SUFX=		.tar.bz2

MODULES=		lang/python

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/py-xdg \
			x11/devilspie \
			x11/py-gtk2

NO_TEST=		Yes

.include <bsd.port.mk>
