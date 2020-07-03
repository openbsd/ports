# $OpenBSD: Makefile,v 1.15 2020/07/03 21:44:34 sthen Exp $

COMMENT=	dynamic definition of Class::DBI sub classes

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Class-DBI-Loader-0.34
CATEGORIES=	databases
REVISION =	0

# Same as Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	databases/p5-Class-DBI
TEST_DEPENDS=	databases/p5-Class-DBI-SQLite

MAKE_ENV+=	TEST_POD=Yes

.include <bsd.port.mk>
