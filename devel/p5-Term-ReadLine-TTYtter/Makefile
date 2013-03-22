# $OpenBSD: Makefile,v 1.2 2013/03/22 19:16:41 bcallah Exp $

COMMENT =		Readline Library Wrapper Module for Twitter
DISTNAME =		Term-ReadLine-TTYtter-1.4
REVISION =		0
CATEGORIES =		devel perl5

MAINTAINER =		Brian Callahan <bcallah@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-Term-ReadKey

TEST_ENV =		TEST_TARGET=test.pl
TEST_IS_INTERACTIVE =	Yes

.include <bsd.port.mk>
