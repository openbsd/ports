# $OpenBSD: Makefile,v 1.3 2020/04/15 13:48:29 fcambus Exp $

COMMENT =	code shared by the MaxMind DB reader and writer modules

DISTNAME =	MaxMind-DB-Common-0.040001
REVISION =	0

CATEGORIES =	net

# Artistic 2.0
PERMIT_PACKAGE =	Yes

MODULES =	cpan

RUN_DEPENDS =	devel/p5-List-AllUtils \
		devel/p5-MooX-StrictConstructor \
		devel/p5-Data-Dumper-Concise \
		devel/p5-DateTime \
		devel/p5-Moo \
		devel/p5-Sub-Quote \
		devel/p5-namespace-autoclean

PKG_ARCH =	*

CPAN_AUTHOR =	MAXMIND

.include <bsd.port.mk>
