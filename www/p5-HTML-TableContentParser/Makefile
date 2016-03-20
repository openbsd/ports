# $OpenBSD: Makefile,v 1.13 2016/03/20 19:57:18 naddy Exp $

COMMENT=	module to parse the content of tables in HTML text

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	HTML-TableContentParser-0.13
REVISION=	3
CATEGORIES=	www devel

# GPL
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=	www/p5-HTML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
