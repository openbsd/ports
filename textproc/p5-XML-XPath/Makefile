# $OpenBSD: Makefile,v 1.36 2019/05/11 21:32:36 cwen Exp $

COMMENT =	modules for parsing and evaluating XPath statements

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	XML-XPath-1.44

CATEGORIES =	textproc

# perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	textproc/p5-XML-Parser>=2.23

TEST_DEPENDS =	devel/p5-Test-CPAN-Meta \
		devel/p5-Path-Tiny>=0.076

MODCPAN_EXAMPLES =	Yes

.include <bsd.port.mk>
