# $OpenBSD: Makefile,v 1.8 2004/12/10 04:06:06 kevlo Exp $

COMMENT=	"HTML text formating class"

DISTNAME=	HTML-Format-2.04
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5 

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=HTML/}

RUN_DEPENDS=	:p5-HTML-Tree-*:www/p5-HTML-Tree \
		:p5-Font-AFM-*:textproc/p5-Font-AFM
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
