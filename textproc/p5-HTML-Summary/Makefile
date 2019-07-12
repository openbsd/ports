# $OpenBSD: Makefile,v 1.11 2019/07/12 20:50:03 sthen Exp $

COMMENT=	summarize HTML pages

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	HTML-Summary-0.022
CATEGORIES=	textproc

# Perl5
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	converters/p5-Jcode
TEST_DEPENDS =	www/p5-HTML-TreeBuilder-XPath

.include <bsd.port.mk>
