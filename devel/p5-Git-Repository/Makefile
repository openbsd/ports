# $OpenBSD: Makefile,v 1.11 2016/02/25 15:18:33 benoit Exp $

COMMENT = 	Perl interface to Git repositories

MODULES =	cpan
DISTNAME =	Git-Repository-1.317
CATEGORIES =	devel

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		devel/p5-System-Command
TEST_DEPENDS =		devel/git
MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
