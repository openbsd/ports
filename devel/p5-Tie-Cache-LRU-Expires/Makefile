# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:23 espie Exp $
COMMENT=	LRU cache in memory with expiry

MODULES=	cpan
DISTNAME=	Tie-Cache-LRU-Expires-0.54
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Tie-Cache-LRU \
		devel/p5-Carp-Assert \
		devel/p5-Class-Virtual \
		devel/p5-Class-Data-Inheritable

# perl
PERMIT_PACKAGE_CDROM=	Yes

.include <bsd.port.mk>
