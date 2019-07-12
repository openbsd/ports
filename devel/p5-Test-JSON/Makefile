# $OpenBSD: Makefile,v 1.10 2019/07/12 20:45:10 sthen Exp $

COMMENT =	test JSON data

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Test-JSON-0.11
REVISION =	0
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =		Yes

RUN_DEPENDS =		converters/p5-JSON-Any \
			devel/p5-Test-Differences

CONFIGURE_STYLE =	modbuild

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
