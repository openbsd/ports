# $OpenBSD: Makefile,v 1.23 2015/01/21 06:23:35 bentley Exp $

COMMENT=	module to extract text contained within HTML tables

MODULES=	cpan
DISTNAME =	HTML-TableExtract-2.12
CATEGORIES=	www
REVISION =	0

# GPL
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS =	www/p5-HTML-Parser
BUILD_DEPENDS =	${RUN_DEPENDS}

TEST_DEPENDS=	www/p5-HTML-Tree

MAKE_ENV+=	TEST_POD=Yes

.include <bsd.port.mk>
