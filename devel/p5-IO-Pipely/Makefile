# $OpenBSD: Makefile,v 1.4 2021/08/04 09:45:29 cwen Exp $

COMMENT =	portably create pipe() or pipe-like handles
DISTNAME =	IO-Pipely-0.005
CATEGORIES =	devel
REVISION =	1

# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan

TEST_DEPENDS =	devel/p5-Test-Pod-Coverage>=1.08 \
		devel/p5-Test-Pod>=1.41

PKG_ARCH =	*

TEST_ENV =	RELEASE_TESTING=1 RUN_NETWORK_TESTS=0

.include <bsd.port.mk>
