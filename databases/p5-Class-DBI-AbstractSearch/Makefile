# $OpenBSD: Makefile,v 1.12 2019/07/12 20:43:55 sthen Exp $

COMMENT=	abstract Class::DBI's SQL with SQL::Abstract

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Class-DBI-AbstractSearch-0.07
REVISION=	1
CATEGORIES=	databases

# Same as Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	databases/p5-Class-DBI \
		databases/p5-SQL-Abstract-Limit
TEST_DEPENDS=	databases/p5-DBD-SQLite

.include <bsd.port.mk>
