# $OpenBSD: Makefile,v 1.1.1.1 2017/08/04 09:57:56 bluhm Exp $

COMMENT =	RGB color model for Perl

DISTNAME =	Graphics-Color-0.31

CATEGORIES =	graphics

MAINTAINER =		Matthias Pitzl <pitzl@genua.de>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
RUN_DEPENDS =		devel/p5-Moose \
			devel/p5-MooseX-Aliases>=0.10 \
			devel/p5-MooseX-Clone \
			devel/p5-MooseX-Storage \
			devel/p5-MooseX-Types \
			graphics/p5-Color-Library
TEST_DEPENDS =		devel/p5-Pod-Coverage>=0.18 \
			devel/p5-Test-Number-Delta \
			devel/p5-Test-Pod-Coverage>=1.08

PKG_ARCH =		*

.include <bsd.port.mk>
