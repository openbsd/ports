# $OpenBSD: Makefile,v 1.20 2019/04/28 06:30:46 ajacoutot Exp $

PKG_ARCH=		*

COMMENT=		utilities to manage documentation for Yelp and the web

GNOME_PROJECT=		yelp-tools
GNOME_VERSION=		3.32.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		x11/gnome

BUILD_DEPENDS=		textproc/itstool \
			textproc/libxslt \
			x11/gnome/yelp-xsl

RUN_DEPENDS=		textproc/itstool \
			textproc/libxslt \
			x11/gnome/yelp-xsl

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
