# $OpenBSD: Makefile,v 1.19 2007/01/16 17:52:07 simon Exp $

COMMENT=	"perl parser that builds an HTML tree"

MODULES=	cpan
DISTNAME=	HTML-Tree-3.21
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	www

HOMEPAGE=	http://www.speech.cs.cmu.edu/~sburke/

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-HTML-Parser->=2.19:www/p5-HTML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}

REGRESS_DEPENDS=	::devel/p5-Test-Pod

.include <bsd.port.mk>
