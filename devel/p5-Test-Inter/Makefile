# $OpenBSD: Makefile,v 1.9 2019/05/08 16:05:32 afresh1 Exp $

COMMENT =		framework for more readable interactive test scripts

DISTNAME =		Test-Inter-1.09
CATEGORIES =		devel

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*

TEST_DEPENDS =	devel/p5-File-Find-Rule \
		devel/p5-Test-Pod>=1.00 \
		devel/p5-Test-Pod-Coverage>=1.00

TEST_ENV =	RELEASE_TESTING=1

.include <bsd.port.mk>
