# $OpenBSD: Makefile,v 1.10 2014/12/13 11:02:10 benoit Exp $

COMMENT =	pager utility

DISTNAME =	Data-Page-2.02
CATEGORIES =	databases
MODULES =	cpan

REVISION =	0

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Class-Accessor-Chained \
		devel/p5-Test-Exception
BUILD_DEPENDS =	${RUN_DEPENDS}

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
