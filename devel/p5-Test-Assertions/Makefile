# $OpenBSD: Makefile,v 1.10 2020/07/03 21:45:12 sthen Exp $

COMMENT =	set of building blocks for both unit and runtime testing

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Test-Assertions-1.054
REVISION =	2
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =		Yes

RUN_DEPENDS =	devel/p5-Log-Trace

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
