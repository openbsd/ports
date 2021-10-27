# $OpenBSD: Makefile,v 1.18 2021/10/27 03:53:05 afresh1 Exp $

COMMENT =	generate SQL from Perl data structures

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	SQL-Abstract-2.000001
CATEGORIES =	databases

MAINTAINER =	Andrew Hewus Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-Hash-Merge>=0.12 \
		devel/p5-MRO-Compat>=0.12 \
		devel/p5-Moo>=2.000001 \
		devel/p5-Sub-Quote>=2.000001 \
		devel/p5-Test-Deep>=0.101

TEST_DEPENDS =	devel/p5-Test-Exception>=0.31 \
		devel/p5-Test-Warn

# Optional depends to avoid skipping tests
TEST_DEPENDS +=	databases/p5-DBIx-Class

.include <bsd.port.mk>
