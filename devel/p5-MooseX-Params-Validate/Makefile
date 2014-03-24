# $OpenBSD: Makefile,v 1.6 2014/03/24 09:29:38 jasper Exp $

COMMENT =	extension of Params::Validate for using Moose types

MODULES =	cpan
DISTNAME =	MooseX-Params-Validate-0.18
CATEGORIES =	devel
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-Devel-Caller \
		devel/p5-Moose \
		devel/p5-Params-Validate \
		devel/p5-Sub-Exporter

TEST_DEPENDS =	devel/p5-Test-Exception \
		devel/p5-Test-Fatal

.include <bsd.port.mk>
