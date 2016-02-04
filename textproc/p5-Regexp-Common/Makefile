# $OpenBSD: Makefile,v 1.16 2016/02/04 16:08:37 bluhm Exp $

COMMENT =		provide commonly requested regular expressions

DISTNAME =		Regexp-Common-2016020301

CATEGORIES =		textproc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
TEST_DEPENDS =		devel/p5-Test-Regexp

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
