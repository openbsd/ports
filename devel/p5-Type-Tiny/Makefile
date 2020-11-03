# $OpenBSD: Makefile,v 1.10 2020/11/03 03:03:51 afresh1 Exp $

COMMENT =		tiny, yet Moo(se)-compatible type constraint

DISTNAME =		Type-Tiny-1.010006
CATEGORIES =		devel

# perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*
CPAN_AUTHOR =		TOBYINK

RUN_DEPENDS =		devel/p5-Exporter-Tiny

TEST_DEPENDS =		devel/p5-Class-InsideOut \
			devel/p5-MooseX-Types \
			devel/p5-Mouse \
			devel/p5-MouseX-Types \
			devel/p5-Specio \
			devel/p5-Test-LeakTrace \
			devel/p5-Test-Memory-Cycle \
			devel/p5-Test-Warnings

# Additional depends to avoid skipping tests
TEST_DEPENDS +=		devel/p5-Devel-Hide \
			devel/p5-IO-String \
			devel/p5-Moo \
			devel/p5-MooseX-Getopt \
			devel/p5-MooseX-Types-Common

.include <bsd.port.mk>
