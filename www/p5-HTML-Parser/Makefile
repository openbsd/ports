# $OpenBSD: Makefile,v 1.11 2001/05/10 23:09:28 avsm Exp $

COMMENT=	"modules to parse and extract information from HTML"
 
DISTNAME=	HTML-Parser-3.24
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5
NEED_VERSION=	1.407
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= HTML

BUILD_DEPENDS=	${LOCALBASE}/libdata/perl5/site_perl/HTML/Tagset.pm::www/p5-HTML-Tagset
RUN_DEPENDS=	${BUILD_DEPENDS}

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
