# $OpenBSD: Makefile,v 1.9 2019/07/12 20:45:08 sthen Exp $

COMMENT =	set of building blocks for both unit and runtime testing

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Test-Assertions-1.054
REVISION =	1
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =		Yes

RUN_DEPENDS =	devel/p5-Log-Trace

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
