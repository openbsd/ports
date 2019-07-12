# $OpenBSD: Makefile,v 1.10 2019/07/12 20:45:01 sthen Exp $

COMMENT =	extension of Params::Validate for using Moose types

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	MooseX-Params-Validate-0.21
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-Devel-Caller \
		devel/p5-Moose \
		devel/p5-Params-Validate>=1.15 \
		devel/p5-Sub-Exporter

TEST_DEPENDS =	devel/p5-Test-Fatal

.include <bsd.port.mk>
