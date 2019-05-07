# $OpenBSD: Makefile,v 1.21 2019/05/07 20:42:46 ajacoutot Exp $

PKG_ARCH=		*

COMMENT=		utilities to manage documentation for Yelp and the web

GNOME_PROJECT=		yelp-tools
GNOME_VERSION=		3.32.1

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
