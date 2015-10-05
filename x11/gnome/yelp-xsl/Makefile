# $OpenBSD: Makefile,v 1.26 2015/10/05 17:05:26 ajacoutot Exp $

PKG_ARCH=		*

COMMENT=		XSLT stylesheets for yelp

GNOME_PROJECT=		yelp-xsl
GNOME_VERSION=		3.18.1

# GPLv2 - LGPLv2.1 - MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		x11/gnome

BUILD_DEPENDS=		devel/gettext-tools \
			textproc/itstool \
			textproc/libxslt

.include <bsd.port.mk>
