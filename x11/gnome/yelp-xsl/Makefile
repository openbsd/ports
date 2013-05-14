# $OpenBSD: Makefile,v 1.17 2013/05/14 07:24:43 ajacoutot Exp $

PKG_ARCH=	*

COMMENT=	XSLT stylesheets for yelp

GNOME_PROJECT=	yelp-xsl
GNOME_VERSION=	3.8.1

HOMEPAGE=	https://projects.gnome.org/yelp/

# GPLv2 - LGPLv2.1 - MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/gnome

BUILD_DEPENDS=	${RUN_DEPENDS} \
		textproc/itstool

RUN_DEPENDS=	devel/gettext \
		textproc/libxslt

.include <bsd.port.mk>
