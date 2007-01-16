# $OpenBSD: Makefile,v 1.2 2007/01/16 17:52:07 simon Exp $

COMMENT=		"find URIs in arbitrary text"

MODULES=		cpan
DISTNAME=		URI-Find-0.16
CATEGORIES=		www

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		:p5-URI->=1.00:www/p5-URI
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
