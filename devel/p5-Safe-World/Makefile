# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:21 espie Exp $

COMMENT=	create multiple virtual instances of a Perl interpreter

DISTNAME=	Safe-World-0.14
REVISION=	1
CATEGORIES=	devel
MODULES=	cpan
USE_GROFF =	Yes

CPAN_AUTHOR=	GMPASSOS

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Hash-NoRef \
		devel/p5-Safe-Hole
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
