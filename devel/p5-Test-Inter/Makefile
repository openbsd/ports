# $OpenBSD: Makefile,v 1.11 2020/07/03 21:45:14 sthen Exp $

COMMENT =		framework for more readable interactive test scripts

DISTNAME =		Test-Inter-1.09
CATEGORIES =		devel
REVISION =		0

# perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*

TEST_DEPENDS =	devel/p5-File-Find-Rule \
		devel/p5-Test-Pod>=1.00 \
		devel/p5-Test-Pod-Coverage>=1.00

TEST_ENV =	RELEASE_TESTING=1

.include <bsd.port.mk>
