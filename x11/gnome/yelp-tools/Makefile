# $OpenBSD: Makefile,v 1.5 2012/04/17 08:27:04 jasper Exp $

PKG_ARCH=	*

COMMENT=	utilities to manage documentation for Yelp and the web

GNOME_PROJECT=	yelp-tools
GNOME_VERSION=	3.4.1

HOMEPAGE=	https://projects.gnome.org/yelp/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	x11/gnome

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	textproc/itstool \
		textproc/libxslt \
		x11/gnome/yelp-xsl

.include <bsd.port.mk>
