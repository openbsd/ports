# $OpenBSD: Makefile,v 1.2 2009/03/28 18:12:50 naddy Exp $

PKG_ARCH=		*

COMMENT=		gui to configure devilspie rules

DISTNAME=		gdevilspie-0.31
PKGNAME=		${DISTNAME}p0
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

RUN_DEPENDS=		::devel/desktop-file-utils \
			::x11/devilspie \
			::x11/gnome/py-gnome-desktop

MODPY_EGG_VERSION=	0.3

NO_REGRESS=		Yes

.include <bsd.port.mk>
