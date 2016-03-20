# $OpenBSD: Makefile,v 1.10 2016/03/20 19:56:11 naddy Exp $

COMMENT=	classes and UML-style associations on top of DBI

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	DBIx-DataModel-1.09
REVISION=	1
CATEGORIES=	databases

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-DBI \
		databases/p5-SQL-Abstract
TEST_DEPENDS=databases/p5-DBD-Mock

CONFIGURE_STYLE=modbuild

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
