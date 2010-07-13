# $OpenBSD: Makefile,v 1.15 2010/07/13 20:14:23 sthen Exp $

COMMENT=	Blatte functions to generate (X)HTML

MODULES=	cpan
DISTNAME=	Blatte-HTML-0.9
REVISION=	0
HOMEPAGE=	http://www.blatte.org/

CATEGORIES=	www

CPAN_AUTHOR=	BOBG

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Blatte-*:textproc/p5-Blatte \
		:p5-HTML-Parser-*:www/p5-HTML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
