# $OpenBSD: Makefile,v 1.2 2002/12/11 16:40:43 margarida Exp $

COMMENT=	"use HTML Templates which allows expressions"

VERSION=	0.04
DISTNAME=	HTML-Template-Expr-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5

HOMEPAGE=	http://sourceforge.net/projects/html-template/

MAINTAINER=	Jim Geovedi <jim@corebsd.or.id>

# GPL/Artistic license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=HTML/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-HTML-Template-*:www/p5-HTML-Template \
		:p5-Parse-RecDescent-*:devel/p5-Parse-RecDescent

CONFIGURE_STYLE=perl

.include <bsd.port.mk>
