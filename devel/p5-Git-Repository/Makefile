# $OpenBSD: Makefile,v 1.3 2012/04/07 15:46:23 gsoares Exp $

COMMENT = 	Perl interface to Git repositories

MODULES =	cpan
DISTNAME =	Git-Repository-1.25
CATEGORIES =	devel

MAINTAINER=	Wen Heping <wenheping@gmail.com>

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =		devel/p5-System-Command
REGRESS_DEPENDS =	devel/git
MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
