# $OpenBSD: Makefile,v 1.13 2007/01/16 17:52:06 simon Exp $

COMMENT=	"Blatte functions to generate (X)HTML"

MODULES=	cpan
DISTNAME=	Blatte-HTML-0.9
PKGNAME=	p5-${DISTNAME}p0
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
