# $OpenBSD: Makefile,v 1.2 2015/04/16 19:43:30 schwarze Exp $

COMMENT =	generate JUnit compatible output from TAP results

MODULES =	cpan
DISTNAME =	TAP-Harness-JUnit-0.42
CATEGORIES =	devel

# perl
PERMIT_PACKAGE_CDROM =	Yes

CPAN_AUTHOR =	JLAVALLEE

RUN_DEPENDS = 	textproc/p5-XML-Simple
TEST_DEPENDS = 	devel/p5-Test-Deep \
		textproc/p5-XML-Simple

CONFIGURE_STYLE = modbuild

.include <bsd.port.mk>
