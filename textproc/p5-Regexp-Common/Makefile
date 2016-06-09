# $OpenBSD: Makefile,v 1.20 2016/06/09 23:33:04 bluhm Exp $

COMMENT =		provide commonly requested regular expressions

DISTNAME =		Regexp-Common-2016060801

CATEGORIES =		textproc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Artistic, Artistic 2.0, BSD, MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*
TEST_DEPENDS =		devel/p5-Test-Regexp

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
