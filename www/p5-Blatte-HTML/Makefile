# $OpenBSD: Makefile,v 1.20 2016/03/20 19:57:13 naddy Exp $

COMMENT=	Blatte functions to generate (X)HTML

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Blatte-HTML-0.9
REVISION=	0
HOMEPAGE=	http://www.blatte.org/

CATEGORIES=	www

CPAN_AUTHOR=	BOBG

# GPL
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	textproc/p5-Blatte \
		www/p5-HTML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
