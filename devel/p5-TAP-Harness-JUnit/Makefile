# $OpenBSD: Makefile,v 1.3 2016/03/20 19:56:35 naddy Exp $

COMMENT =	generate JUnit compatible output from TAP results

MODULES =	cpan
PKG_ARCH =	*
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
