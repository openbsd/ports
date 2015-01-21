# $OpenBSD: Makefile,v 1.7 2015/01/21 14:27:59 sthen Exp $

COMMENT=	create multiple virtual instances of a Perl interpreter

DISTNAME=	Safe-World-0.14
REVISION=	1
CATEGORIES=	devel
MODULES=	cpan

CPAN_AUTHOR=	GMPASSOS

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Hash-NoRef \
		devel/p5-Safe-Hole
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
