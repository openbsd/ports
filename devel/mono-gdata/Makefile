# $OpenBSD: Makefile,v 1.1.1.1 2011/05/03 16:36:58 ajacoutot Exp $

COMMENT=	.NET library for the Google Data API

V=		1.4.0.2
DISTNAME=	libgoogle-data-mono-${V}
PKGNAME=	mono-gdata-${V}

CATEGORIES=	devel

HOMEPAGE=	http://google-gdata.googlecode.com/

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}files/

MODULES=	lang/mono

USE_GMAKE=	Yes
NO_REGRESS=	Yes

# see VERSION in ${WRKSRC}/Makefile
VERSION=	${V:C/^([0-9]+\.[0-9]+\.[0-9]+).*/\1/}
MAKE_FLAGS=	VERSION=${VERSION}

.include <bsd.port.mk>
