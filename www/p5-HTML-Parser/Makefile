# $OpenBSD: Makefile,v 1.27 2006/04/15 20:32:33 steven Exp $

SHARED_ONLY=	Yes

COMMENT=	"modules to parse and extract information from HTML"
 
DISTNAME=	HTML-Parser-3.51
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=HTML/}

RUN_DEPENDS=	:p5-HTML-Tagset->=3:www/p5-HTML-Tagset
BUILD_DEPENDS=	${RUN_DEPENDS}
REGRESS_DEPENDS=::www/p5-URI \
		::www/p5-libwww

MAINTAINER=	Srebrenko Sehic <haver@insecure.dk>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
