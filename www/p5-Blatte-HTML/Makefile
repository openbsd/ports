# $OpenBSD: Makefile,v 1.21 2019/07/12 20:50:49 sthen Exp $

COMMENT=	Blatte functions to generate (X)HTML

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Blatte-HTML-0.9
REVISION=	0
HOMEPAGE=	http://www.blatte.org/

CATEGORIES=	www

CPAN_AUTHOR=	BOBG

# GPL
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	textproc/p5-Blatte \
		www/p5-HTML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
