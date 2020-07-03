# $OpenBSD: Makefile,v 1.27 2020/07/03 21:45:22 sthen Exp $

COMMENT=	perl interface to the cairo library

MODULES=	cpan
DISTNAME=	Cairo-1.107
CATEGORIES=	graphics devel
CPAN_AUTHOR=	XAOC
REVISION=	0

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += c cairo freetype perl z

LIB_DEPENDS=	graphics/cairo

BUILD_DEPENDS=	devel/p5-ExtUtils-Depends \
		devel/p5-ExtUtils-PkgConfig

.include <bsd.port.mk>
