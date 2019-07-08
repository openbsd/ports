# $OpenBSD: Makefile,v 1.14 2019/07/08 08:26:23 cwen Exp $

COMMENT =		create PDF tables with perl

DISTNAME =		PDF-Table-0.11.0

CATEGORIES =		textproc

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*

RUN_DEPENDS =		textproc/p5-PDF-API2
TEST_DEPENDS =		devel/p5-Test-CheckManifest>=0.9

MAKE_ENV +=		TEST_POD=Yes

.include <bsd.port.mk>
