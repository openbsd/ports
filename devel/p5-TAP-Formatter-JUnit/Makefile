# $OpenBSD: Makefile,v 1.1.1.1 2013/10/26 00:07:29 schwarze Exp $

COMMENT =	format TAP::Harness output as JUnit XML

MODULES =	cpan
DISTNAME =	TAP-Formatter-JUnit-0.09
CATEGORIES =	devel
MAINTAINER =	Ingo Schwarze <schwarze@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

CPAN_AUTHOR =	GTERMARS

RUN_DEPENDS =	devel/p5-File-Slurp \
		devel/p5-Moose \
		devel/p5-MooseX-NonMoose \
		textproc/p5-XML-Generator
TEST_DEPENDS =	devel/p5-File-Slurp \
		devel/p5-IO-stringy \
		devel/p5-Test-Pod \
		devel/p5-Test-Pod-Coverage \
		devel/p5-Test-Differences

CONFIGURE_STYLE = modbuild

.include <bsd.port.mk>
