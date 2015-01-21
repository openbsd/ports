# $OpenBSD: Makefile,v 1.8 2015/01/21 14:05:46 sthen Exp $

COMMENT=	classes and UML-style associations on top of DBI

MODULES=	cpan
DISTNAME=	DBIx-DataModel-1.09
REVISION=	0
CATEGORIES=	databases

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-DBI \
		databases/p5-SQL-Abstract
TEST_DEPENDS=databases/p5-DBD-Mock

CONFIGURE_STYLE=modbuild

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
