# $OpenBSD: Makefile,v 1.12 2015/01/21 14:05:46 sthen Exp $

COMMENT=	produce HTML form elements for database columns

MODULES=	cpan
DISTNAME=	Class-DBI-AsForm-2.42
REVISION=	1
CATEGORIES=	www databases

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-Class-DBI-Plugin-Type \
		www/p5-HTML-Tree
TEST_DEPENDS=	databases/p5-DBD-SQLite

.include <bsd.port.mk>
