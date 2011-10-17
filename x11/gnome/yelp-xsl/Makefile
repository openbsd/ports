# $OpenBSD: Makefile,v 1.7 2011/10/17 17:52:11 ajacoutot Exp $

COMMENT=	XSLT stylesheets for yelp

GNOME_PROJECT=	yelp-xsl
GNOME_VERSION=	3.2.1

# GPLv2 - LGPLv2.1 - MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	x11/gnome

BUILD_DEPENDS=	${RUN_DEPENDS} \
		textproc/itstool

RUN_DEPENDS=	devel/gettext \
		textproc/libxslt

FAKE_FLAGS=	pkgconfigdir=${PREFIX}/lib/pkgconfig

.include <bsd.port.mk>
