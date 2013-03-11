# $OpenBSD: Makefile,v 1.4 2013/03/11 10:50:17 espie Exp $

COMMENT = 	Perl interface to Git repositories

MODULES =	cpan
DISTNAME =	Git-Repository-1.25
CATEGORIES =	devel

MAINTAINER=	Wen Heping <wenheping@gmail.com>

# perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		devel/p5-System-Command
TEST_DEPENDS =	devel/git
MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
