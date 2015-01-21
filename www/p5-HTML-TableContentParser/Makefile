# $OpenBSD: Makefile,v 1.11 2015/01/21 06:23:35 bentley Exp $

COMMENT=	module to parse the content of tables in HTML text

MODULES=	cpan
DISTNAME=	HTML-TableContentParser-0.13
REVISION=	3
CATEGORIES=	www devel
USE_GROFF =	Yes

# GPL
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=	www/p5-HTML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
