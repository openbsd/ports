# $OpenBSD: Makefile,v 1.3 2019/07/12 20:48:36 sthen Exp $

COMMENT =	read MaxMind DB files and look up IP addresses

DISTNAME =	MaxMind-DB-Reader-1.000014

CATEGORIES =	net

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# Artistic 2.0
PERMIT_PACKAGE =	Yes

MODULES =	cpan

RUN_DEPENDS =	devel/p5-Data-IEEE754 \
		devel/p5-Data-Printer \
		devel/p5-Data-Validate-IP>=0.25 \
		devel/p5-DateTime \
		devel/p5-List-AllUtils \
		devel/p5-Module-Implementation \
		devel/p5-Moo \
		devel/p5-MooX-StrictConstructor \
		devel/p5-Role-Tiny>=1.003002 \
		devel/p5-namespace-autoclean \
		net/p5-MaxMind-DB-Common

TEST_DEPENDS =	devel/p5-Path-Class>=0.27 \
		devel/p5-Test-Bits \
		devel/p5-Test-Fatal \
		devel/p5-Test-Number-Delta \
		devel/p5-Test-Requires \
		net/p5-MaxMind-DB-Common

PKG_ARCH =	*

CPAN_AUTHOR =	MAXMIND

.include <bsd.port.mk>
