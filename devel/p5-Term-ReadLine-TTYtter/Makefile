# $OpenBSD: Makefile,v 1.4 2016/03/20 19:56:36 naddy Exp $

COMMENT =		Readline Library Wrapper Module for Twitter
DISTNAME =		Term-ReadLine-TTYtter-1.4
REVISION =		1
CATEGORIES =		devel perl5

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*

RUN_DEPENDS =		devel/p5-Term-ReadKey

TEST_ENV =		TEST_TARGET=test.pl
TEST_IS_INTERACTIVE =	Yes

.include <bsd.port.mk>
