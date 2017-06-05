# $OpenBSD: Makefile,v 1.13 2017/06/05 09:23:25 benoit Exp $

COMMENT =	formatter for spellchecking pod

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	Pod-Spell-1.20
CATEGORIES =	textproc

# Perl
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =	devel/p5-File-ShareDir-Install

RUN_DEPENDS =	devel/p5-Class-Tiny \
		devel/p5-File-ShareDir \
		textproc/p5-Lingua-EN-Inflect
TEST_DEPENDS =	devel/p5-Test-Deep

.include <bsd.port.mk>
