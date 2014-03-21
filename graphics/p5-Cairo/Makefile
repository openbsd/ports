# $OpenBSD: Makefile,v 1.19 2014/03/21 15:28:34 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface to the cairo library

MODULES=	cpan
DISTNAME=	Cairo-1.104
CATEGORIES=	graphics devel
CPAN_AUTHOR=	XAOC

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += cairo freetype z

LIB_DEPENDS=	graphics/cairo

BUILD_DEPENDS=	devel/p5-ExtUtils-Depends \
		devel/p5-ExtUtils-PkgConfig

.include <bsd.port.mk>
