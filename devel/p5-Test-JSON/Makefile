# $OpenBSD: Makefile,v 1.11 2020/07/03 21:45:14 sthen Exp $

COMMENT =	test JSON data

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Test-JSON-0.11
REVISION =	1
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =		Yes

RUN_DEPENDS =		converters/p5-JSON-Any \
			devel/p5-Test-Differences

CONFIGURE_STYLE =	modbuild

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
