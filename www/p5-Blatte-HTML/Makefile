# $OpenBSD: Makefile,v 1.18 2013/03/11 11:44:44 espie Exp $

COMMENT=	Blatte functions to generate (X)HTML

MODULES=	cpan
DISTNAME=	Blatte-HTML-0.9
REVISION=	0
HOMEPAGE=	http://www.blatte.org/
USE_GROFF =	Yes

CATEGORIES=	www

CPAN_AUTHOR=	BOBG

# GPL
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	textproc/p5-Blatte \
		www/p5-HTML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
