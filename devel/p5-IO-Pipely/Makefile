# $OpenBSD: Makefile,v 1.3 2020/07/03 21:44:56 sthen Exp $

COMMENT =	portably create pipe() or pipe-like handles
DISTNAME =	IO-Pipely-0.005
CATEGORIES =	devel
REVISION =	0

MAINTAINER =	Charlene Wendling <julianaito@posteo.jp>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan

TEST_DEPENDS =	devel/p5-Test-Pod-Coverage>=1.08 \
		devel/p5-Test-Pod>=1.41

PKG_ARCH =	*

TEST_ENV =	RELEASE_TESTING=1 RUN_NETWORK_TESTS=0

.include <bsd.port.mk>
