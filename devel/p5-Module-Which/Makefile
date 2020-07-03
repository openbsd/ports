# $OpenBSD: Makefile,v 1.7 2020/07/03 21:45:01 sthen Exp $

COMMENT =	finds out which version of Perl modules are installed

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Module-Which-0.05
EPOCH =		0
CATEGORIES =	devel
REVISION =	0

MAINTAINER =	Okan Demirmen <okan@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-String-Truncate

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
