# $OpenBSD: Makefile,v 1.13 2016/03/20 19:56:09 naddy Exp $

COMMENT=	produce HTML form elements for database columns

MODULES=	cpan
PKG_ARCH=	*
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
