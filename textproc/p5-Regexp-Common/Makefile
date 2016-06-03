# $OpenBSD: Makefile,v 1.19 2016/06/03 21:20:17 bluhm Exp $

COMMENT =		provide commonly requested regular expressions

DISTNAME =		Regexp-Common-2016060201

CATEGORIES =		textproc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*
TEST_DEPENDS =		devel/p5-Test-Regexp

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
