# $OpenBSD: Makefile,v 1.4 2018/12/02 01:22:26 afresh1 Exp $

COMMENT =		non-blocking getaddrinfo() resolver

DISTNAME =		POE-Component-Resolver-0.921
CATEGORIES =		net devel

MAINTAINER =		Charlene Wendling <julianaito@posteo.jp>

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*

RUN_DEPENDS =		devel/p5-POE>=1.311

MAKE_ENV =		TEST_POD=Yes
TEST_ENV =		RELEASE_TESTING=1

.include <bsd.port.mk>
