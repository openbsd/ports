# $OpenBSD: Makefile,v 1.8 2016/03/20 19:56:39 naddy Exp $

COMMENT =		check Uniform Resource Identifiers

DISTNAME =		Test-URI-1.081
CATEGORIES =		devel

MODULES =		cpan
PKG_ARCH =		*

# perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		www/p5-URI

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
