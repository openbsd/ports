# $OpenBSD: Makefile,v 1.15 2019/07/12 20:50:05 sthen Exp $

COMMENT =	formatter for spellchecking pod

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	Pod-Spell-1.20
CATEGORIES =	textproc
REVISION =	0

# Perl
PERMIT_PACKAGE =	Yes

BUILD_DEPENDS =	devel/p5-File-ShareDir-Install

RUN_DEPENDS =	devel/p5-Class-Tiny \
		devel/p5-File-ShareDir \
		devel/p5-Path-Tiny \
		textproc/p5-Lingua-EN-Inflect
TEST_DEPENDS =	devel/p5-Test-Deep

.include <bsd.port.mk>
