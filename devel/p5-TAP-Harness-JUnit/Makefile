# $OpenBSD: Makefile,v 1.5 2020/07/03 21:45:10 sthen Exp $

COMMENT =	generate JUnit compatible output from TAP results

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	TAP-Harness-JUnit-0.42
CATEGORIES =	devel
REVISION =	0

# perl
PERMIT_PACKAGE =	Yes

CPAN_AUTHOR =	JLAVALLEE

RUN_DEPENDS = 	textproc/p5-XML-Simple
TEST_DEPENDS = 	devel/p5-Test-Deep \
		textproc/p5-XML-Simple

CONFIGURE_STYLE = modbuild

.include <bsd.port.mk>
