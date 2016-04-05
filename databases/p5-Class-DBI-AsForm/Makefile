# $OpenBSD: Makefile,v 1.14 2016/04/05 12:21:41 sthen Exp $

COMMENT=	produce HTML form elements for database columns

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Class-DBI-AsForm-2.42
REVISION=	2
CATEGORIES=	www databases

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-Class-DBI-Plugin-Type \
		www/p5-CGI \
		www/p5-HTML-Tree
TEST_DEPENDS=	databases/p5-DBD-SQLite

.include <bsd.port.mk>
