# $OpenBSD: Makefile,v 1.25 2015/09/24 10:28:38 ajacoutot Exp $

PKG_ARCH=		*

COMMENT=		XSLT stylesheets for yelp

GNOME_PROJECT=		yelp-xsl
GNOME_VERSION=		3.18.0

# GPLv2 - LGPLv2.1 - MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		x11/gnome

BUILD_DEPENDS=		devel/gettext-tools \
			textproc/itstool \
			textproc/libxslt

.include <bsd.port.mk>
