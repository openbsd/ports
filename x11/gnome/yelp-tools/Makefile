# $OpenBSD: Makefile,v 1.28 2021/11/02 00:02:58 sthen Exp $

PKG_ARCH=		*

COMMENT=		utilities to manage documentation for Yelp and the web

GNOME_PROJECT=		yelp-tools
GNOME_VERSION=		41.0
REVISION=		0

# GPLv2
PERMIT_PACKAGE=		Yes

MODULES=		devel/meson \
			lang/python \
			x11/gnome

MODPY_ADJ_FILES=	tools/yelp-build.in \
			tools/yelp-check.in \
			tools/yelp-new.in

BUILD_DEPENDS=		textproc/itstool \
			textproc/libxslt \
			textproc/py-lxml${MODPY_FLAVOR} \
			x11/gnome/yelp-xsl

RUN_DEPENDS=		textproc/itstool \
			textproc/libxslt \
			textproc/py-lxml${MODPY_FLAVOR} \
			x11/gnome/yelp-xsl

.include <bsd.port.mk>
