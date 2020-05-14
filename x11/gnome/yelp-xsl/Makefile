# $OpenBSD: Makefile,v 1.36 2020/05/14 16:08:51 ajacoutot Exp $

PKG_ARCH=		*

COMMENT=		XSLT stylesheets for yelp

GNOME_PROJECT=		yelp-xsl
GNOME_VERSION=		3.36.0

# GPLv2 - LGPLv2.1 - MIT
PERMIT_PACKAGE=		Yes

MODULES=		x11/gnome

BUILD_DEPENDS=		textproc/itstool \
			textproc/libxslt

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
