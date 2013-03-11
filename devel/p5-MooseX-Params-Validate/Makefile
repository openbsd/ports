# $OpenBSD: Makefile,v 1.5 2013/03/11 10:50:19 espie Exp $

COMMENT =	extension of Params::Validate for using Moose types

MODULES =	cpan
DISTNAME =	MooseX-Params-Validate-0.12
REVISION =	0
CATEGORIES =	devel
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-Devel-Caller \
		devel/p5-Moose \
		devel/p5-Params-Validate \
		devel/p5-Sub-Exporter

TEST_DEPENDS =	devel/p5-Test-Exception

.include <bsd.port.mk>
