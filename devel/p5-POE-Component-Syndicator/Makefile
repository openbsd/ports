# $OpenBSD: Makefile,v 1.6 2020/07/03 21:45:04 sthen Exp $

COMMENT =		module which implements the Observer pattern for POE

DISTNAME =		POE-Component-Syndicator-0.06
CATEGORIES =		devel
REVISION =		0

MAINTAINER =		Charlene Wendling <julianaito@posteo.jp>

MODULES =		cpan
PKG_ARCH =		*

# perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		devel/p5-Object-Pluggable>=1.29 \
			devel/p5-POE>=1.311

MAKE_ENV =		TEST_POD=1
TEST_ENV =		RELEASE_TESTING=1

.include <bsd.port.mk>
