# $OpenBSD: Makefile,v 1.7 2015/11/05 19:08:57 jca Exp $

COMMENT =	set of building blocks for both unit and runtime testing

MODULES =	cpan
DISTNAME =	Test-Assertions-1.054
REVISION =	1
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-Log-Trace

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
