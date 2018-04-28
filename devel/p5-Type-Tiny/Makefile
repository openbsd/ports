# $OpenBSD: Makefile,v 1.5 2018/04/28 14:18:47 ajacoutot Exp $

COMMENT =		tiny, yet Moo(se)-compatible type constraint

DISTNAME =		Type-Tiny-1.002001
CATEGORIES =		devel

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*
CPAN_AUTHOR =		TOBYINK

RUN_DEPENDS =		devel/p5-Exporter-Tiny

TEST_DEPENDS =		devel/p5-Test-LeakTrace \
			devel/p5-Mouse \
			devel/p5-MouseX-Types \
			devel/p5-Test-Warnings

.include <bsd.port.mk>
