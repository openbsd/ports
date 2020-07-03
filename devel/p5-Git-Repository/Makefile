# $OpenBSD: Makefile,v 1.14 2020/07/03 21:44:55 sthen Exp $

COMMENT = 	Perl interface to Git repositories

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Git-Repository-1.317
CATEGORIES =	devel
REVISION =	0

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		devel/p5-System-Command
TEST_DEPENDS =		devel/git
MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
