# $OpenBSD: Makefile,v 1.11 2019/07/12 20:44:46 sthen Exp $

COMMENT=	load mix-ins or components to your C3-based class

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Class-C3-Componentised-1.001002
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Class-C3 \
		devel/p5-Class-Inspector \
		devel/p5-MRO-Compat
BUILD_DEPENDS=	${RUN_DEPENDS}

TEST_DEPENDS =	devel/p5-Test-Exception

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
