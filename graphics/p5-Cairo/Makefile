# $OpenBSD: Makefile,v 1.18 2013/09/17 12:44:35 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface to the cairo library

MODULES=	cpan
DISTNAME=	Cairo-1.103
CATEGORIES=	graphics devel
CPAN_AUTHOR=	XAOC

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += cairo freetype z

LIB_DEPENDS=	graphics/cairo

BUILD_DEPENDS=	devel/p5-ExtUtils-Depends \
		devel/p5-ExtUtils-PkgConfig

.include <bsd.port.mk>
