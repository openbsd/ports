# $OpenBSD: Makefile,v 1.4 2019/07/12 20:45:07 sthen Exp $

COMMENT =	generate JUnit compatible output from TAP results

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	TAP-Harness-JUnit-0.42
CATEGORIES =	devel

# perl
PERMIT_PACKAGE =	Yes

CPAN_AUTHOR =	JLAVALLEE

RUN_DEPENDS = 	textproc/p5-XML-Simple
TEST_DEPENDS = 	devel/p5-Test-Deep \
		textproc/p5-XML-Simple

CONFIGURE_STYLE = modbuild

.include <bsd.port.mk>
