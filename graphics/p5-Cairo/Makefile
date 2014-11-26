# $OpenBSD: Makefile,v 1.21 2014/11/26 08:00:41 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface to the cairo library

MODULES=	cpan
DISTNAME=	Cairo-1.105
CATEGORIES=	graphics devel
CPAN_AUTHOR=	XAOC

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += cairo freetype z

LIB_DEPENDS=	graphics/cairo

BUILD_DEPENDS=	devel/p5-ExtUtils-Depends \
		devel/p5-ExtUtils-PkgConfig

.include <bsd.port.mk>
