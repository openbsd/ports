# $OpenBSD: Makefile,v 1.25 2019/07/12 20:47:05 sthen Exp $

COMMENT=	perl interface to the cairo library

MODULES=	cpan
DISTNAME=	Cairo-1.106
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
