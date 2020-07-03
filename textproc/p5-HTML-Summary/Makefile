# $OpenBSD: Makefile,v 1.12 2020/07/03 21:45:45 sthen Exp $

COMMENT=	summarize HTML pages

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	HTML-Summary-0.022
CATEGORIES=	textproc
REVISION =	0

# Perl5
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	converters/p5-Jcode
TEST_DEPENDS =	www/p5-HTML-TreeBuilder-XPath

.include <bsd.port.mk>
