# $OpenBSD: Makefile,v 1.12 2003/04/27 19:40:30 margarida Exp $

COMMENT=	"perl parser that builds an HTML tree"

VERSION=	3.17
DISTNAME=	HTML-Tree-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5

HOMEPAGE=	http://www.speech.cs.cmu.edu/~sburke/

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=HTML/}

MAINTAINER=	Margarida Sequeira <margarida@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=  :p5-HTML-Parser->=2.19:www/p5-HTML-Parser \
		:p5-HTML-Tagset->=3.02:www/p5-HTML-Tagset
RUN_DEPENDS=    ${BUILD_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
