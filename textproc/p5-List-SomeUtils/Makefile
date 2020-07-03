# $OpenBSD: Makefile,v 1.5 2020/07/03 21:45:47 sthen Exp $

COMMENT =	Provide the stuff missing in List::Util

DISTNAME =	List-SomeUtils-0.58
REVISION =	1

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
