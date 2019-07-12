# $OpenBSD: Makefile,v 1.17 2019/07/12 20:43:58 sthen Exp $

COMMENT=	Tie hashes to DBI relational databases

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Tie-DBI-1.06
CATEGORIES=	databases
FIX_EXTRACT_PERMISSIONS=Yes

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	databases/p5-DBI
TEST_DEPENDS=	databases/p5-DBD-SQLite

.include <bsd.port.mk>
