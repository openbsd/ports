# $OpenBSD: Makefile,v 1.11 2014/03/16 09:12:24 ajacoutot Exp $

PKG_ARCH=	*

COMMENT=	utilities to manage documentation for Yelp and the web

GNOME_PROJECT=	yelp-tools
GNOME_VERSION=	3.10.0
REVISION=	1

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/gnome

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	textproc/itstool \
		textproc/libxslt \
		x11/gnome/yelp-xsl

.include <bsd.port.mk>
