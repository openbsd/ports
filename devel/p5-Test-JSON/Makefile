# $OpenBSD: Makefile,v 1.8 2016/03/20 19:56:37 naddy Exp $

COMMENT =	test JSON data

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Test-JSON-0.11
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =		converters/p5-JSON-Any \
			devel/p5-Test-Differences \
			devel/p5-Test-Tester

CONFIGURE_STYLE =	modbuild

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
