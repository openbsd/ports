# $OpenBSD: Makefile,v 1.25 2021/05/09 08:51:21 ajacoutot Exp $

PKG_ARCH=		*

COMMENT=		utilities to manage documentation for Yelp and the web

GNOME_PROJECT=		yelp-tools
GNOME_VERSION=		40.0

# GPLv2
PERMIT_PACKAGE=		Yes

MODULES=		devel/meson \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		textproc/itstool \
			textproc/libxslt \
			textproc/py-lxml${MODPY_FLAVOR} \
			x11/gnome/yelp-xsl

RUN_DEPENDS=		textproc/itstool \
			textproc/libxslt \
			textproc/py-lxml${MODPY_FLAVOR} \
			x11/gnome/yelp-xsl

.include <bsd.port.mk>
