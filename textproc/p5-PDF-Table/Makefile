# $OpenBSD: Makefile,v 1.16 2020/11/03 10:41:05 benoit Exp $

COMMENT =		create PDF tables with perl

DISTNAME =		PDF-Table-0.12

CATEGORIES =		textproc

CPAN_AUTHOR =		OMEGA

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*

RUN_DEPENDS =		textproc/p5-PDF-API2
TEST_DEPENDS =		devel/p5-Test-CheckManifest>=0.9

MAKE_ENV +=		TEST_POD=Yes

.include <bsd.port.mk>
