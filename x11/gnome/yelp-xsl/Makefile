# $OpenBSD: Makefile,v 1.22 2014/10/04 15:20:39 ajacoutot Exp $

PKG_ARCH=	*

COMMENT=	XSLT stylesheets for yelp

GNOME_PROJECT=	yelp-xsl
GNOME_VERSION=	3.14.0

# GPLv2 - LGPLv2.1 - MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/gnome

BUILD_DEPENDS=	${RUN_DEPENDS} \
		textproc/itstool

RUN_DEPENDS=	devel/gettext \
		textproc/libxslt

.include <bsd.port.mk>
