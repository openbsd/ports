# $OpenBSD: Makefile,v 1.20 2014/06/14 23:25:21 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface to the cairo library

MODULES=	cpan
DISTNAME=	Cairo-1.104
CATEGORIES=	graphics devel
CPAN_AUTHOR=	XAOC
REVISION=	0

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += cairo freetype z

LIB_DEPENDS=	graphics/cairo

BUILD_DEPENDS=	devel/p5-ExtUtils-Depends \
		devel/p5-ExtUtils-PkgConfig

.include <bsd.port.mk>
