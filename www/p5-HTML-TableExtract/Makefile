# $OpenBSD: Makefile,v 1.26 2017/05/30 11:24:10 benoit Exp $

COMMENT=	module to extract text contained within HTML tables

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	HTML-TableExtract-2.15
CATEGORIES=	www

# GPL
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS =	www/p5-HTML-Parser
BUILD_DEPENDS =	${RUN_DEPENDS}

TEST_DEPENDS=	www/p5-HTML-Tree

MAKE_ENV+=	TEST_POD=Yes

.include <bsd.port.mk>
