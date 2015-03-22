# $OpenBSD: Makefile,v 1.7 2015/03/22 08:28:31 benoit Exp $

COMMENT = 	Perl interface to Git repositories

MODULES =	cpan
DISTNAME =	Git-Repository-1.313
CATEGORIES =	devel

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		devel/p5-System-Command
TEST_DEPENDS =		devel/git
MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
