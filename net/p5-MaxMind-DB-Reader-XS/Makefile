# $OpenBSD: Makefile,v 1.3 2019/07/12 20:48:36 sthen Exp $

ONLY_FOR_ARCHS = ${LP64_ARCHS}

COMMENT =	fast XS implementation of MaxMind DB reader

DISTNAME =	MaxMind-DB-Reader-XS-1.000008

CATEGORIES =	net

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# Artistic 2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=	c maxminddb perl

COMPILER =	base-clang ports-gcc

MODULES =	cpan

LIB_DEPENDS =	net/libmaxminddb

RUN_DEPENDS =	devel/p5-Moo \
		devel/p5-namespace-autoclean \
		math/p5-Math-Int128 \
		net/p5-MaxMind-DB-Common>=0.040001 \
		net/p5-MaxMind-DB-Reader

TEST_DEPENDS =	devel/p5-Module-Implementation \
		devel/p5-Path-Class>=0.27 \
		devel/p5-Test-Fatal \
		devel/p5-Test-Number-Delta \
		devel/p5-Test-Requires \
		net/p5-MaxMind-DB-Common \
		net/p5-Net-Works>=0.21

CONFIGURE_STYLE = modbuild

CPAN_AUTHOR =	MAXMIND

.include <bsd.port.mk>
