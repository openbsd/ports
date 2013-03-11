# $OpenBSD: Makefile,v 1.7 2013/03/11 02:52:06 espie Exp $

COMMENT=	classes and UML-style associations on top of DBI

MODULES=	cpan
DISTNAME=	DBIx-DataModel-1.09
REVISION=	0
CATEGORIES=	databases
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-DBI \
		databases/p5-SQL-Abstract
TEST_DEPENDS=databases/p5-DBD-Mock

CONFIGURE_STYLE=modbuild

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
