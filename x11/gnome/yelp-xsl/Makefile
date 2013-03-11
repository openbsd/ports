# $OpenBSD: Makefile,v 1.15 2013/03/11 11:46:12 espie Exp $

PKG_ARCH=	*

COMMENT=	XSLT stylesheets for yelp

GNOME_PROJECT=	yelp-xsl
GNOME_VERSION=	3.6.1

HOMEPAGE=	https://projects.gnome.org/yelp/

# GPLv2 - LGPLv2.1 - MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/gnome

BUILD_DEPENDS=	${RUN_DEPENDS} \
		textproc/itstool>=1.2.0

RUN_DEPENDS=	devel/gettext \
		textproc/libxslt

.include <bsd.port.mk>
