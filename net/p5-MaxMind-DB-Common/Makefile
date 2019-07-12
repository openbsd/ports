# $OpenBSD: Makefile,v 1.2 2019/07/12 20:48:36 sthen Exp $

COMMENT =	code shared by the MaxMind DB reader and writer modules

DISTNAME =	MaxMind-DB-Common-0.040001

CATEGORIES =	net

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

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
