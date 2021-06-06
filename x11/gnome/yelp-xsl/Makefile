# $OpenBSD: Makefile,v 1.41 2021/06/06 16:48:11 ajacoutot Exp $

PKG_ARCH=		*

COMMENT=		XSLT stylesheets for yelp

GNOME_PROJECT=		yelp-xsl
GNOME_VERSION=		40.2

# GPLv2 - LGPLv2.1 - MIT
PERMIT_PACKAGE=		Yes

MODULES=		x11/gnome

BUILD_DEPENDS=		textproc/itstool \
			textproc/libxslt

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
