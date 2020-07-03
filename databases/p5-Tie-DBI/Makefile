# $OpenBSD: Makefile,v 1.18 2020/07/03 21:44:38 sthen Exp $

COMMENT=	Tie hashes to DBI relational databases

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Tie-DBI-1.06
CATEGORIES=	databases
FIX_EXTRACT_PERMISSIONS=Yes
REVISION =	0

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	databases/p5-DBI
TEST_DEPENDS=	databases/p5-DBD-SQLite

.include <bsd.port.mk>
