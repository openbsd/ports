# $OpenBSD: Makefile,v 1.16 2020/07/03 21:44:36 sthen Exp $

COMMENT=	add contextual fetches to DBI

DISTNAME=	DBIx-ContextualFetch-1.03
REVISION=	3
CATEGORIES=	databases
MODULES=	cpan
PKG_ARCH=	*

# Same as Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	databases/p5-DBI>=1.35
TEST_DEPENDS=databases/p5-DBD-SQLite

.include <bsd.port.mk>
