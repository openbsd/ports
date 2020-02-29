# $OpenBSD: Makefile,v 1.14 2020/02/29 07:31:08 benoit Exp $

COMMENT=	dynamic definition of Class::DBI sub classes

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Class-DBI-Loader-0.34
CATEGORIES=	databases

# Same as Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	databases/p5-Class-DBI
TEST_DEPENDS=	databases/p5-Class-DBI-SQLite

MAKE_ENV+=	TEST_POD=Yes

.include <bsd.port.mk>
