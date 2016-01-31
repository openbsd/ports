# $OpenBSD: Makefile,v 1.32 2016/01/31 09:37:26 benoit Exp $

COMMENT =	modules for parsing and evaluating XPath statements

MODULES =	cpan
DISTNAME =	XML-XPath-1.28
CATEGORIES =	textproc

RUN_DEPENDS =	textproc/p5-XML-Parser>=2.23

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODCPAN_EXAMPLES =	Yes

TEST_DEPENDS =		devel/p5-Path-Tiny

.include <bsd.port.mk>
