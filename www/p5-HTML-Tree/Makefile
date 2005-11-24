# $OpenBSD: Makefile,v 1.17 2005/11/24 03:20:18 kevlo Exp $

COMMENT=	"perl parser that builds an HTML tree"

VERSION=	3.1901
DISTNAME=	HTML-Tree-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5

HOMEPAGE=	http://www.speech.cs.cmu.edu/~sburke/

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=HTML/}

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-HTML-Parser->=2.19:www/p5-HTML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
