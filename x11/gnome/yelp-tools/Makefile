# $OpenBSD: Makefile,v 1.10 2013/09/28 08:51:33 ajacoutot Exp $

PKG_ARCH=	*

COMMENT=	utilities to manage documentation for Yelp and the web

GNOME_PROJECT=	yelp-tools
GNOME_VERSION=	3.10.0
REVISION=	0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/gnome

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	textproc/itstool \
		textproc/libxslt \
		x11/gnome/yelp-xsl

.include <bsd.port.mk>
