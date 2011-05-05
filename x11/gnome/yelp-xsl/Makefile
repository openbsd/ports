# $OpenBSD: Makefile,v 1.1.1.1 2011/05/05 13:20:16 ajacoutot Exp $

COMMENT=	XSLT stylesheets for yelp

GNOME_PROJECT=	yelp-xsl
GNOME_VERSION=	3.0.1

# GPLv2 - LGPLv2.1 - MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	x11/gnome

BUILD_DEPENDS=	${RUN_DEPENDS}

RUN_DEPENDS=	devel/gettext \
		textproc/libxslt

FAKE_FLAGS=	pkgconfigdir=${PREFIX}/lib/pkgconfig

.include <bsd.port.mk>
