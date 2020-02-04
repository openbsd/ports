# $OpenBSD: Makefile,v 1.4 2020/02/04 21:17:30 fcambus Exp $

COMMENT =	Provide the stuff missing in List::Util

DISTNAME =	List-SomeUtils-0.58
REVISION =	0

CATEGORIES =	textproc

# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan

BUILD_DEPENDS =	textproc/p5-List-SomeUtils-XS

RUN_DEPENDS =	textproc/p5-List-SomeUtils-XS \
		devel/p5-Module-Implementation

TEST_DEPENDS =	devel/p5-Test-LeakTrace

PKG_ARCH =	*

.include <bsd.port.mk>
