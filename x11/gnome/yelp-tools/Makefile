# $OpenBSD: Makefile,v 1.22 2019/06/15 10:02:08 ajacoutot Exp $

PKG_ARCH=		*

COMMENT=		utilities to manage documentation for Yelp and the web

GNOME_PROJECT=		yelp-tools
GNOME_VERSION=		3.32.2

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
