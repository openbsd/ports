# $OpenBSD: Makefile,v 1.16 2017/12/04 21:09:39 espie Exp $

COMMENT=	Tie hashes to DBI relational databases

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Tie-DBI-1.06
CATEGORIES=	databases
FIX_EXTRACT_PERMISSIONS=Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-DBI
TEST_DEPENDS=	databases/p5-DBD-SQLite

.include <bsd.port.mk>
