# $OpenBSD: Makefile,v 1.17 2013/03/26 08:28:50 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface to the cairo library

MODULES=	cpan
DISTNAME=	Cairo-1.101
CATEGORIES=	graphics devel
CPAN_AUTHOR=	TSCH

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += cairo freetype z

LIB_DEPENDS=	graphics/cairo

BUILD_DEPENDS=	devel/p5-ExtUtils-Depends \
		devel/p5-ExtUtils-PkgConfig

.include <bsd.port.mk>
