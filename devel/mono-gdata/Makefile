# $OpenBSD: Makefile,v 1.3 2013/03/11 10:50:11 espie Exp $

COMMENT=	.NET library for the Google Data API

V=		1.9.0.0
DISTNAME=	libgoogle-data-mono-${V}
PKGNAME=	mono-gdata-${V}

CATEGORIES=	devel

HOMEPAGE=	http://google-gdata.googlecode.com/

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}files/

MODULES=	lang/mono

USE_GMAKE=	Yes
NO_TEST=	Yes

# see VERSION in ${WRKSRC}/Makefile
VERSION=	${V:C/^([0-9]+\.[0-9]+\.[0-9]+).*/\1/}
MAKE_FLAGS=	VERSION=${VERSION}

SUBST_VARS=	V

pre-configure:
	${SUBST_CMD} ${WRKSRC}/version/AssemblyVersion.cs

.include <bsd.port.mk>
