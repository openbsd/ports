# $OpenBSD: Makefile,v 1.6 2020/07/03 21:45:37 sthen Exp $

COMMENT =		non-blocking getaddrinfo() resolver

DISTNAME =		POE-Component-Resolver-0.921
CATEGORIES =		net devel
REVISION =		0

MAINTAINER =		Charlene Wendling <julianaito@posteo.jp>

# perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*

RUN_DEPENDS =		devel/p5-POE>=1.311

MAKE_ENV =		TEST_POD=Yes
TEST_ENV =		RELEASE_TESTING=1

.include <bsd.port.mk>
