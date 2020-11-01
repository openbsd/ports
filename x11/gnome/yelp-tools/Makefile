# $OpenBSD: Makefile,v 1.24 2020/11/01 08:22:10 ajacoutot Exp $

PKG_ARCH=		*

COMMENT=		utilities to manage documentation for Yelp and the web

GNOME_PROJECT=		yelp-tools
GNOME_VERSION=		3.38.0

# GPLv2
PERMIT_PACKAGE=		Yes

MODULES=		x11/gnome

BUILD_DEPENDS=		textproc/itstool \
			textproc/libxslt \
			x11/gnome/yelp-xsl

RUN_DEPENDS=		textproc/itstool \
			textproc/libxslt \
			x11/gnome/yelp-xsl

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
