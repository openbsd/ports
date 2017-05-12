# $OpenBSD: Makefile,v 1.35 2017/05/12 20:19:48 benoit Exp $

COMMENT =	modules for parsing and evaluating XPath statements

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	XML-XPath-1.40
CATEGORIES =	textproc

RUN_DEPENDS =	textproc/p5-XML-Parser>=2.23

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODCPAN_EXAMPLES =	Yes

TEST_DEPENDS =		devel/p5-Path-Tiny

.include <bsd.port.mk>
