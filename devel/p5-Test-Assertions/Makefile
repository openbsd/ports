# $OpenBSD: Makefile,v 1.6 2015/01/21 14:27:59 sthen Exp $

COMMENT =	set of building blocks for both unit and runtime testing

MODULES =	cpan
DISTNAME =	Test-Assertions-1.054
REVISION =	0
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-Log-Trace

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
