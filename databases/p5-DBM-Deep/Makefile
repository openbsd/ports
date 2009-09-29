# $OpenBSD: Makefile,v 1.1.1.1 2009/09/29 08:33:33 kevlo Exp $

COMMENT=	perl multi-level hash/array DBM that supports

DISTNAME=	DBM-Deep-1.0014

CATEGORIES=	databases

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES=	cpan
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-IO-stringy \
		::devel/p5-Test-Deep \
		::devel/p5-Test-Warn

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
