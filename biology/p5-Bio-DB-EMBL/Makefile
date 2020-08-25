# $OpenBSD: Makefile,v 1.1.1.1 2020/08/25 23:37:52 cwen Exp $

COMMENT =		database object interface for EMBL entry retrieval

DISTNAME =		Bio-DB-EMBL-1.7.4

CATEGORIES =		biology

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		biology/bioperl>=1.7.7

# XXX tests require network
TEST_DEPENDS =		devel/p5-Test-Most \
			devel/p5-Test-RequiresInternet

PKG_ARCH =		*

.include <bsd.port.mk>
