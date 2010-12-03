# $OpenBSD: Makefile,v 1.6 2010/12/03 11:44:24 ajacoutot Exp $

COMMENT=	perl multi-level hash/array DBM that supports transactions

DISTNAME=	DBM-Deep-1.0025
REVISION=	0

CATEGORIES=	databases

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES=	cpan
USE_GROFF =	Yes
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-IO-stringy \
		devel/p5-Test-Deep \
		devel/p5-Test-Warn

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
