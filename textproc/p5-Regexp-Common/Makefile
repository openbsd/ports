# $OpenBSD: Makefile,v 1.17 2016/03/20 19:57:07 naddy Exp $

COMMENT =		provide commonly requested regular expressions

DISTNAME =		Regexp-Common-2016020301

CATEGORIES =		textproc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*
TEST_DEPENDS =		devel/p5-Test-Regexp

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
