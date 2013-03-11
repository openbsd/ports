# $OpenBSD: Makefile,v 1.8 2013/03/11 10:50:14 espie Exp $

COMMENT=	load mix-ins or components to your C3-based class

MODULES=	cpan
DISTNAME=	Class-C3-Componentised-1.001000
REVISION=	0
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Class-C3 \
		devel/p5-Class-Inspector \
		devel/p5-MRO-Compat
BUILD_DEPENDS=	${RUN_DEPENDS}

TEST_DEPENDS =	devel/p5-Test-Exception

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
