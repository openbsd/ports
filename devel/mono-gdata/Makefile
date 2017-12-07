# $OpenBSD: Makefile,v 1.7 2017/12/07 13:12:44 espie Exp $

COMMENT=	.NET library for the Google Data API

V=		1.9.0.0
DISTNAME=	libgoogle-data-mono-${V}
PKGNAME=	mono-gdata-${V}
REVISION=	1
FIX_EXTRACT_PERMISSIONS=Yes

CATEGORIES=	devel

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://distfiles.nl/

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
