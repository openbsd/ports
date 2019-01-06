# $OpenBSD: Makefile,v 1.10 2019/01/06 23:19:09 afresh1 Exp $

COMMENT=	load mix-ins or components to your C3-based class

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Class-C3-Componentised-1.001002
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
