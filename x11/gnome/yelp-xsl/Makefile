# $OpenBSD: Makefile,v 1.27 2016/04/18 06:51:48 ajacoutot Exp $

PKG_ARCH=		*

COMMENT=		XSLT stylesheets for yelp

GNOME_PROJECT=		yelp-xsl
GNOME_VERSION=		3.20.1

# GPLv2 - LGPLv2.1 - MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		x11/gnome

BUILD_DEPENDS=		devel/gettext-tools \
			textproc/itstool \
			textproc/libxslt

.include <bsd.port.mk>
