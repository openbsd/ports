# $OpenBSD: Makefile,v 1.1.1.1 2013/10/26 00:02:52 schwarze Exp $

COMMENT =	generate JUnit compatible output from TAP results

MODULES =	cpan
DISTNAME =	TAP-Harness-JUnit-0.41
CATEGORIES =	devel
MAINTAINER =	Ingo Schwarze <schwarze@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

CPAN_AUTHOR =	JLAVALLEE

RUN_DEPENDS = 	textproc/p5-XML-Simple
TEST_DEPENDS = 	devel/p5-Test-Deep \
		textproc/p5-XML-Simple

CONFIGURE_STYLE = modbuild

.include <bsd.port.mk>
