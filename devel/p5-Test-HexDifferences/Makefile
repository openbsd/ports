# $OpenBSD: Makefile,v 1.2 2019/07/12 20:45:10 sthen Exp $

COMMENT =	test binary as hexadecimal string

DISTNAME =	Test-HexDifferences-1.001

CATEGORIES =	devel

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan

RUN_DEPENDS =	devel/p5-Sub-Exporter \
		devel/p5-Test-Differences>=0.60 \
		devel/p5-Test-NoWarnings \
		devel/p5-Test-Perl-Critic \
		textproc/p5-Text-Diff

PKG_ARCH =	*

.include <bsd.port.mk>
