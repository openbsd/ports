# $OpenBSD: Makefile,v 1.13 2019/07/12 20:43:55 sthen Exp $

COMMENT=	dynamic definition of Class::DBI sub classes

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Class-DBI-Loader-0.32
REVISION=	1
CATEGORIES=	databases

# Same as Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	databases/p5-Class-DBI
TEST_DEPENDS=	databases/p5-Class-DBI-SQLite

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
