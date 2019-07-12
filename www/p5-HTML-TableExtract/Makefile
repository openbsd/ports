# $OpenBSD: Makefile,v 1.27 2019/07/12 20:50:54 sthen Exp $

COMMENT=	module to extract text contained within HTML tables

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	HTML-TableExtract-2.15
CATEGORIES=	www

# GPL
PERMIT_PACKAGE=	Yes

RUN_DEPENDS =	www/p5-HTML-Parser
BUILD_DEPENDS =	${RUN_DEPENDS}

TEST_DEPENDS=	www/p5-HTML-Tree

MAKE_ENV+=	TEST_POD=Yes

.include <bsd.port.mk>
