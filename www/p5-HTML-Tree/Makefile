# $OpenBSD: Makefile,v 1.11 2002/11/30 20:00:35 margarida Exp $

COMMENT=	"perl parser that builds an HTML tree"

VERSION=	3.16
DISTNAME=	HTML-Tree-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5

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
