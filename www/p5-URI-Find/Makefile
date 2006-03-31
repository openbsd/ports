# $OpenBSD: Makefile,v 1.1.1.1 2006/03/31 18:42:19 bernd Exp $

COMMENT=		"find URIs in arbitrary text"
DISTNAME=		URI-Find-0.16
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		www perl5

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=URI/}

CONFIGURE_STYLE=	perl

RUN_DEPENDS=		:p5-URI->=1.00:www/p5-URI
BUILD_DEPENDS=		${RUN_DEPENDS}

PKG_ARCH= 		*

.include <bsd.port.mk>
