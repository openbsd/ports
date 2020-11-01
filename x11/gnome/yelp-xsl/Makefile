# $OpenBSD: Makefile,v 1.37 2020/11/01 08:21:53 ajacoutot Exp $

PKG_ARCH=		*

COMMENT=		XSLT stylesheets for yelp

GNOME_PROJECT=		yelp-xsl
GNOME_VERSION=		3.38.1

# GPLv2 - LGPLv2.1 - MIT
PERMIT_PACKAGE=		Yes

MODULES=		x11/gnome

BUILD_DEPENDS=		textproc/itstool \
			textproc/libxslt

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
