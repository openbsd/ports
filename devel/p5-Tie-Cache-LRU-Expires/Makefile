# $OpenBSD: Makefile,v 1.10 2020/07/03 21:45:17 sthen Exp $
COMMENT=	LRU cache in memory with expiry

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Tie-Cache-LRU-Expires-0.55
CATEGORIES=	devel
REVISION =	0

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Tie-Cache-LRU \
		devel/p5-Carp-Assert \
		devel/p5-Class-Virtual \
		devel/p5-Class-Data-Inheritable

# perl
PERMIT_PACKAGE=	Yes

.include <bsd.port.mk>
