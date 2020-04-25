# $OpenBSD: Makefile,v 1.14 2020/04/25 18:36:38 afresh1 Exp $

COMMENT =	pager utility

DISTNAME =	Data-Page-2.03
CATEGORIES =	databases
MODULES =	cpan
PKG_ARCH =	*
FIX_EXTRACT_PERMISSIONS =	Yes

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-Class-Accessor-Chained \
		devel/p5-Test-Exception
BUILD_DEPENDS =	${RUN_DEPENDS}

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
