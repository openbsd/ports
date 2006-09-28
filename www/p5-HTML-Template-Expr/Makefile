# $OpenBSD: Makefile,v 1.3 2006/09/28 22:03:45 steven Exp $

COMMENT=	"use HTML Templates which allows expressions"

DISTNAME=	HTML-Template-Expr-0.07
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5

HOMEPAGE=	http://sourceforge.net/projects/html-template/

MAINTAINER=	Jim Dew <jdew@yggdrasil.ca>

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

PKG_ARCH=	*

.include <bsd.port.mk>
