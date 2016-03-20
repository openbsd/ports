# $OpenBSD: Makefile,v 1.13 2016/03/20 19:56:11 naddy Exp $

COMMENT =	generate SQL from Perl data structures

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	SQL-Abstract-1.81
CATEGORIES =	databases

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_ARGS +=	--skipdeps

RUN_DEPENDS =	devel/p5-Hash-Merge>=0.12 \
		devel/p5-MRO-Compat>=0.12 \
		devel/p5-Moo>=1.004002

TEST_DEPENDS =	devel/p5-Test-Deep>=0.101 \
		devel/p5-Test-Exception>=0.31 \
		devel/p5-Test-Warn>=0

# Optional depends to avoid skipping tests
TEST_DEPENDS +=	databases/p5-DBIx-Class

.include <bsd.port.mk>
