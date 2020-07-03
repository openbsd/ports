# $OpenBSD: Makefile,v 1.5 2020/07/03 21:45:13 sthen Exp $

COMMENT =	test binary as hexadecimal string

DISTNAME =	Test-HexDifferences-1.001
REVISION =	1
FIX_EXTRACT_PERMISSIONS =	Yes

CATEGORIES =	devel

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
