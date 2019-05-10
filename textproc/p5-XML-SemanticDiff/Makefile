# $OpenBSD: Makefile,v 1.4 2019/05/10 16:08:49 cwen Exp $

COMMENT =	compare XML documents

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	XML-SemanticDiff-1.0007

CATEGORIES =	textproc

# perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	textproc/p5-XML-Parser

TEST_DEPENDS =	devel/p5-Test-TrailingSpace

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
