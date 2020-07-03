# $OpenBSD: Makefile,v 1.11 2020/07/03 21:45:02 sthen Exp $

COMMENT =	extension of Params::Validate for using Moose types

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	MooseX-Params-Validate-0.21
CATEGORIES =	devel
REVISION =	0

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-Devel-Caller \
		devel/p5-Moose \
		devel/p5-Params-Validate>=1.15 \
		devel/p5-Sub-Exporter

TEST_DEPENDS =	devel/p5-Test-Fatal

.include <bsd.port.mk>
