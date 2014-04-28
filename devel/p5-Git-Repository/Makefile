# $OpenBSD: Makefile,v 1.5 2014/04/28 19:53:16 benoit Exp $

COMMENT = 	Perl interface to Git repositories

MODULES =	cpan
DISTNAME =	Git-Repository-1.311
CATEGORIES =	devel

# perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		devel/p5-System-Command
TEST_DEPENDS =		devel/git
MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
