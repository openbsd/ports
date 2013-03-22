# $OpenBSD: Makefile,v 1.7 2013/03/22 16:15:30 benoit Exp $
COMMENT=	LRU cache in memory with expiry

MODULES=	cpan
DISTNAME =	Tie-Cache-LRU-Expires-0.55
CATEGORIES=	devel

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Tie-Cache-LRU \
		devel/p5-Carp-Assert \
		devel/p5-Class-Virtual \
		devel/p5-Class-Data-Inheritable

# perl
PERMIT_PACKAGE_CDROM=	Yes

.include <bsd.port.mk>
