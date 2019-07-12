# $OpenBSD: Makefile,v 1.6 2019/07/12 20:45:07 sthen Exp $

COMMENT =	format TAP::Harness output as JUnit XML

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	TAP-Formatter-JUnit-0.11
CATEGORIES =	devel

# perl
PERMIT_PACKAGE =	Yes

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
