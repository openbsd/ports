# $OpenBSD: Makefile,v 1.2 2008/11/19 00:27:28 simon Exp $

COMMENT=	classes and UML-style associations on top of DBI

MODULES=	cpan
DISTNAME=	DBIx-DataModel-1.07
CATEGORIES=	databases

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::databases/p5-DBI \
		::databases/p5-SQL-Abstract
REGRESS_DEPENDS=::databases/p5-DBD-Mock

CONFIGURE_STYLE=modbuild

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
