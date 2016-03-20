# $OpenBSD: Makefile,v 1.8 2016/03/20 19:56:39 naddy Exp $
COMMENT=	LRU cache in memory

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Tie-Cache-LRU-0.21
REVISION=	0
CATEGORIES=	devel

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-enum \
		devel/p5-Carp-Assert \
		devel/p5-Class-Data-Inheritable \
		devel/p5-Class-Virtual

# perl
PERMIT_PACKAGE_CDROM=	Yes

.include <bsd.port.mk>
