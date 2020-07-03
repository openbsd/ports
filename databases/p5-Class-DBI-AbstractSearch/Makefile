# $OpenBSD: Makefile,v 1.13 2020/07/03 21:44:34 sthen Exp $

COMMENT=	abstract Class::DBI's SQL with SQL::Abstract

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Class-DBI-AbstractSearch-0.07
REVISION=	2
CATEGORIES=	databases

# Same as Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	databases/p5-Class-DBI \
		databases/p5-SQL-Abstract-Limit
TEST_DEPENDS=	databases/p5-DBD-SQLite

.include <bsd.port.mk>
