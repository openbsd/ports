# $OpenBSD: Makefile,v 1.4 2020/07/03 21:45:32 sthen Exp $

COMMENT =	create MaxMind DB database files

DISTNAME =	MaxMind-DB-Writer-0.300003
REVISION =	1

CATEGORIES =	net

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =	c perl

MODULES =	cpan

CONFIGURE_STYLE = modbuild

BUILD_DEPENDS =	devel/p5-Module-Build>=0.28

RUN_DEPENDS =	converters/p5-Sereal-Decoder \
		converters/p5-Sereal-Encoder>=3.002 \
		devel/p5-Data-Dumper-Concise \
		devel/p5-Data-IEEE754 \
		devel/p5-Moose \
		devel/p5-MooseX-Params-Validate \
		devel/p5-MooseX-StrictConstructor \
		devel/p5-Test-Deep \
		devel/p5-namespace-autoclean \
		math/p5-Math-Int64>=0.51 \
		math/p5-Math-Int128>=0.21 \
		net/p5-MaxMind-DB-Common>=0.031003 \
		net/p5-MaxMind-DB-Reader \
		net/p5-Net-Works \
		security/p5-Digest-SHA1

TEST_DEPENDS =	converters/p5-JSON \
		devel/p5-Data-Printer \
		devel/p5-Devel-Refcount \
		devel/p5-List-AllUtils \
		devel/p5-Test-Bits \
		devel/p5-Test-Fatal \
		devel/p5-Test-Requires \
		devel/p5-Test-HexDifferences \
		devel/p5-Test-Warnings

CPAN_AUTHOR =	MAXMIND

.include <bsd.port.mk>
