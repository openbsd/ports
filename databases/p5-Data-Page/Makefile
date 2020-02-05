# $OpenBSD: Makefile,v 1.13 2020/02/05 08:41:28 benoit Exp $

COMMENT =	pager utility

DISTNAME =	Data-Page-2.03
CATEGORIES =	databases
MODULES =	cpan
PKG_ARCH =	*

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-Class-Accessor-Chained \
		devel/p5-Test-Exception
BUILD_DEPENDS =	${RUN_DEPENDS}

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
