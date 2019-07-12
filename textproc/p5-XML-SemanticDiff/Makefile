# $OpenBSD: Makefile,v 1.5 2019/07/12 20:50:09 sthen Exp $

COMMENT =	compare XML documents

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	XML-SemanticDiff-1.0007

CATEGORIES =	textproc

# perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	textproc/p5-XML-Parser

TEST_DEPENDS =	devel/p5-Test-TrailingSpace

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
