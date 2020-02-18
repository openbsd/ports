# $OpenBSD: Makefile,v 1.7 2020/02/18 11:39:49 benoit Exp $

COMMENT =		tiny, yet Moo(se)-compatible type constraint

DISTNAME =		Type-Tiny-1.006000
CATEGORIES =		devel

# perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*
CPAN_AUTHOR =		TOBYINK

RUN_DEPENDS =		devel/p5-Exporter-Tiny

TEST_DEPENDS =		devel/p5-Class-InsideOut \
			devel/p5-Mouse \
			devel/p5-MouseX-Types \
			devel/p5-Test-LeakTrace \
			devel/p5-Test-Memory-Cycle \
			devel/p5-Test-Warnings

.include <bsd.port.mk>
