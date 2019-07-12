# $OpenBSD: Makefile,v 1.16 2019/07/12 20:43:55 sthen Exp $

COMMENT=	produce HTML form elements for database columns

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Class-DBI-AsForm-2.42
REVISION=	3
CATEGORIES=	www databases

# Same as Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	databases/p5-Class-DBI-Plugin-Type \
		www/p5-CGI \
		www/p5-HTML-Tree
TEST_DEPENDS=	databases/p5-DBD-SQLite

.include <bsd.port.mk>
