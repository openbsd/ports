# $OpenBSD: Makefile,v 1.12 2019/07/12 20:43:56 sthen Exp $

COMMENT=	classes and UML-style associations on top of DBI

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	DBIx-DataModel-1.09
REVISION=	2
CATEGORIES=	databases

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	databases/p5-DBI \
		databases/p5-SQL-Abstract
TEST_DEPENDS=databases/p5-DBD-Mock

CONFIGURE_STYLE=modbuild

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
