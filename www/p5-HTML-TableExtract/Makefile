# $OpenBSD: Makefile,v 1.20 2013/03/11 11:44:45 espie Exp $

COMMENT=	module to extract text contained within HTML tables

MODULES=	cpan
DISTNAME=	HTML-TableExtract-2.10
REVISION=	0
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

RUN_DEPENDS=	www/p5-HTML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}

# GPL
PERMIT_PACKAGE_CDROM=	Yes

TEST_DEPENDS=	www/p5-HTML-Tree

MAKE_ENV+=		TEST_POD=Yes

.include <bsd.port.mk>
