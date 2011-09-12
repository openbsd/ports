# $OpenBSD: Makefile,v 1.3 2011/09/12 12:04:20 jasper Exp $

COMMENT=	XSLT stylesheets for yelp

GNOME_PROJECT=	yelp-xsl
GNOME_VERSION=	3.0.2

# GPLv2 - LGPLv2.1 - MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=	.tar.bz2

MODULES=	x11/gnome

BUILD_DEPENDS=	${RUN_DEPENDS}

RUN_DEPENDS=	devel/gettext \
		textproc/libxslt

FAKE_FLAGS=	pkgconfigdir=${PREFIX}/lib/pkgconfig

.include <bsd.port.mk>
