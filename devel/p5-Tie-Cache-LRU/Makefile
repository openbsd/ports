# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:23 espie Exp $
COMMENT=	LRU cache in memory

MODULES=	cpan
DISTNAME=	Tie-Cache-LRU-0.21
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-enum \
		devel/p5-Carp-Assert \
		devel/p5-Class-Data-Inheritable \
		devel/p5-Class-Virtual

# perl
PERMIT_PACKAGE_CDROM=	Yes

.include <bsd.port.mk>
