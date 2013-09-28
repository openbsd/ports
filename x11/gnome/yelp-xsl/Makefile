# $OpenBSD: Makefile,v 1.19 2013/09/28 08:51:33 ajacoutot Exp $

PKG_ARCH=	*

COMMENT=	XSLT stylesheets for yelp

GNOME_PROJECT=	yelp-xsl
GNOME_VERSION=	3.10.0
REVISION=	0

# GPLv2 - LGPLv2.1 - MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/gnome

BUILD_DEPENDS=	${RUN_DEPENDS} \
		textproc/itstool

RUN_DEPENDS=	devel/gettext \
		textproc/libxslt

.include <bsd.port.mk>
