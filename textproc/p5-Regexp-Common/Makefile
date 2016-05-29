# $OpenBSD: Makefile,v 1.18 2016/05/29 16:27:36 bluhm Exp $

COMMENT =		provide commonly requested regular expressions

DISTNAME =		Regexp-Common-2016052804

CATEGORIES =		textproc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*
TEST_DEPENDS =		devel/p5-Test-Regexp

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
