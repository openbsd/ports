# $OpenBSD: Makefile,v 1.19 2020/10/18 07:34:24 benoit Exp $

COMMENT=	Tie hashes to DBI relational databases

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Tie-DBI-1.08
CATEGORIES=	databases
FIX_EXTRACT_PERMISSIONS=Yes

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	databases/p5-DBI
TEST_DEPENDS=	databases/p5-DBD-SQLite

.include <bsd.port.mk>
