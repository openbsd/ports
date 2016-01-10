# $OpenBSD: Makefile,v 1.15 2016/01/10 21:44:31 bluhm Exp $

COMMENT =		provide commonly requested regular expressions

DISTNAME =		Regexp-Common-2016010801

CATEGORIES =		textproc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
TEST_DEPENDS =		devel/p5-Test-Regexp

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
