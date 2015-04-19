# $OpenBSD: Makefile,v 1.4 2015/04/19 17:22:17 jca Exp $

COMMENT =	format TAP::Harness output as JUnit XML

MODULES =	cpan
DISTNAME =	TAP-Formatter-JUnit-0.11
CATEGORIES =	devel

# perl
PERMIT_PACKAGE_CDROM =	Yes

CPAN_AUTHOR =	GTERMARS

RUN_DEPENDS =	devel/p5-File-Slurp \
		devel/p5-Moose \
		devel/p5-MooseX-NonMoose \
		textproc/p5-XML-Generator
TEST_DEPENDS =	devel/p5-File-Slurp \
		devel/p5-IO-stringy \
		devel/p5-IPC-Run \
		devel/p5-Test-XML

CONFIGURE_STYLE = modbuild

.include <bsd.port.mk>
