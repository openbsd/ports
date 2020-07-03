# $OpenBSD: Makefile,v 1.15 2020/07/03 21:44:37 sthen Exp $

COMMENT =	pager utility

DISTNAME =	Data-Page-2.03
CATEGORIES =	databases
MODULES =	cpan
PKG_ARCH =	*
FIX_EXTRACT_PERMISSIONS =	Yes
REVISION =	0

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-Class-Accessor-Chained \
		devel/p5-Test-Exception
BUILD_DEPENDS =	${RUN_DEPENDS}

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
