# $OpenBSD: Makefile,v 1.8 2016/03/20 19:56:29 naddy Exp $

COMMENT =	extension of Params::Validate for using Moose types

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	MooseX-Params-Validate-0.19
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-Devel-Caller \
		devel/p5-Moose \
		devel/p5-Params-Validate \
		devel/p5-Sub-Exporter

TEST_DEPENDS =	devel/p5-Test-Exception \
		devel/p5-Test-Fatal

.include <bsd.port.mk>
