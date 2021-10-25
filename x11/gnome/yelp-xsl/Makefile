# $OpenBSD: Makefile,v 1.42 2021/10/25 07:22:25 ajacoutot Exp $

PKG_ARCH=		*

COMMENT=		XSLT stylesheets for yelp

GNOME_PROJECT=		yelp-xsl
GNOME_VERSION=		41.0

# GPLv2 - LGPLv2.1 - MIT
PERMIT_PACKAGE=		Yes

MODULES=		x11/gnome

BUILD_DEPENDS=		textproc/itstool \
			textproc/libxslt

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
