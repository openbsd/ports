# $OpenBSD: Makefile,v 1.5 2016/03/28 14:46:07 okan Exp $

COMMENT =	finds out which version of Perl modules are installed

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Module-Which-0.05
EPOCH =		0
CATEGORIES =	devel

MAINTAINER =	Okan Demirmen <okan@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-String-Truncate

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
