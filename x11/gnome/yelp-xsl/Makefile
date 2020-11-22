# $OpenBSD: Makefile,v 1.38 2020/11/22 09:01:28 ajacoutot Exp $

PKG_ARCH=		*

COMMENT=		XSLT stylesheets for yelp

GNOME_PROJECT=		yelp-xsl
GNOME_VERSION=		3.38.2

# GPLv2 - LGPLv2.1 - MIT
PERMIT_PACKAGE=		Yes

MODULES=		x11/gnome

BUILD_DEPENDS=		textproc/itstool \
			textproc/libxslt

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
