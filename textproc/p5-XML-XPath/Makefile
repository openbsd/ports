# $OpenBSD: Makefile,v 1.37 2019/07/12 20:50:10 sthen Exp $

COMMENT =	modules for parsing and evaluating XPath statements

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	XML-XPath-1.44

CATEGORIES =	textproc

# perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	textproc/p5-XML-Parser>=2.23

TEST_DEPENDS =	devel/p5-Test-CPAN-Meta \
		devel/p5-Path-Tiny>=0.076

MODCPAN_EXAMPLES =	Yes

.include <bsd.port.mk>
