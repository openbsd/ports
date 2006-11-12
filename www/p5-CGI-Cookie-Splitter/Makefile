# $OpenBSD: Makefile,v 1.1.1.1 2006/11/12 14:39:18 mbalmer Exp $

COMMENT=	"splits big cookies into small pieces"

DISTNAME=	CGI-Cookie-Splitter-0.01
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5 

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=CGI/}
PKG_ARCH=		*

RUN_DEPENDS=		::www/p5-CGI-Simple
REGRESS_DEPENDS=${RUN_DEPENDS}

CONFIGURE_STYLE=perl

.include <bsd.port.mk>
