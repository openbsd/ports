# $OpenBSD: Makefile,v 1.9 2017/08/01 22:53:11 bluhm Exp $

COMMENT =	test JSON data

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Test-JSON-0.11
REVISION =	0
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =		converters/p5-JSON-Any \
			devel/p5-Test-Differences

CONFIGURE_STYLE =	modbuild

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
