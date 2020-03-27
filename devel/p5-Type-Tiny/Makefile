# $OpenBSD: Makefile,v 1.8 2020/03/27 17:43:17 sthen Exp $

COMMENT =		tiny, yet Moo(se)-compatible type constraint

DISTNAME =		Type-Tiny-1.010001
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

.include <bsd.port.mk>
