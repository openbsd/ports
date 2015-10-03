# $OpenBSD: Makefile,v 1.5 2015/10/03 11:55:39 robert Exp $

COMMENT=	.NET library for the Google Data API

V=		1.9.0.0
DISTNAME=	libgoogle-data-mono-${V}
PKGNAME=	mono-gdata-${V}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://google-gdata.googlecode.com/

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}files/

MODULES=	lang/mono
MODMONO_GMCS_COMPAT=	Yes

USE_GMAKE=	Yes
NO_TEST=	Yes

# see VERSION in ${WRKSRC}/Makefile
VERSION=	${V:C/^([0-9]+\.[0-9]+\.[0-9]+).*/\1/}
MAKE_FLAGS=	VERSION=${VERSION}

SUBST_VARS=	V

pre-configure:
	${SUBST_CMD} ${WRKSRC}/version/AssemblyVersion.cs

.include <bsd.port.mk>
