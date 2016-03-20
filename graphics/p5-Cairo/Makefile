# $OpenBSD: Makefile,v 1.23 2016/03/20 19:56:43 naddy Exp $

COMMENT=	perl interface to the cairo library

MODULES=	cpan
DISTNAME=	Cairo-1.106
CATEGORIES=	graphics devel
CPAN_AUTHOR=	XAOC

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += cairo freetype perl z

LIB_DEPENDS=	graphics/cairo

BUILD_DEPENDS=	devel/p5-ExtUtils-Depends \
		devel/p5-ExtUtils-PkgConfig

.include <bsd.port.mk>
