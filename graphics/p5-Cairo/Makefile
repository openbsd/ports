# $OpenBSD: Makefile,v 1.24 2017/09/23 10:51:07 sthen Exp $

COMMENT=	perl interface to the cairo library

MODULES=	cpan
DISTNAME=	Cairo-1.106
CATEGORIES=	graphics devel
CPAN_AUTHOR=	XAOC
REVISION=	0

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c cairo freetype perl z

LIB_DEPENDS=	graphics/cairo

BUILD_DEPENDS=	devel/p5-ExtUtils-Depends \
		devel/p5-ExtUtils-PkgConfig

.include <bsd.port.mk>
