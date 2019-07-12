# $OpenBSD: Makefile,v 1.9 2019/07/12 20:45:12 sthen Exp $
COMMENT=	LRU cache in memory with expiry

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Tie-Cache-LRU-Expires-0.55
CATEGORIES=	devel

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Tie-Cache-LRU \
		devel/p5-Carp-Assert \
		devel/p5-Class-Virtual \
		devel/p5-Class-Data-Inheritable

# perl
PERMIT_PACKAGE=	Yes

.include <bsd.port.mk>
