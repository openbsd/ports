# $OpenBSD: Makefile,v 1.13 2012/09/27 11:03:28 ajacoutot Exp $

PKG_ARCH=	*

COMMENT=	XSLT stylesheets for yelp

GNOME_PROJECT=	yelp-xsl
GNOME_VERSION=	3.6.0

HOMEPAGE=	https://projects.gnome.org/yelp/

# GPLv2 - LGPLv2.1 - MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	x11/gnome

BUILD_DEPENDS=	${RUN_DEPENDS} \
		textproc/itstool>=1.2.0

RUN_DEPENDS=	devel/gettext \
		textproc/libxslt

.include <bsd.port.mk>
