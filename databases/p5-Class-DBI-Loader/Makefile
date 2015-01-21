# $OpenBSD: Makefile,v 1.10 2015/01/21 14:05:46 sthen Exp $

COMMENT=	dynamic definition of Class::DBI sub classes

MODULES=	cpan
DISTNAME=	Class-DBI-Loader-0.32
REVISION=	0
CATEGORIES=	databases

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-Class-DBI
TEST_DEPENDS=	databases/p5-Class-DBI-SQLite

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
