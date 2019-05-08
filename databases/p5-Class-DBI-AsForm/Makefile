# $OpenBSD: Makefile,v 1.15 2019/05/08 15:44:45 danj Exp $

COMMENT=	produce HTML form elements for database columns

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Class-DBI-AsForm-2.42
REVISION=	3
CATEGORIES=	www databases

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-Class-DBI-Plugin-Type \
		www/p5-CGI \
		www/p5-HTML-Tree
TEST_DEPENDS=	databases/p5-DBD-SQLite

.include <bsd.port.mk>
