# $OpenBSD: Makefile,v 1.12 2004/06/26 07:35:10 xsa Exp $

COMMENT=	"module to extract text contained within HTML tables"

DISTNAME=	HTML-TableExtract-1.08
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=HTML/}

RUN_DEPENDS=	:p5-HTML-Parser-*:www/p5-HTML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
