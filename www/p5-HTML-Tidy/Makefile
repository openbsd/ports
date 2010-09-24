# $OpenBSD: Makefile,v 1.4 2010/09/24 15:37:42 sthen Exp $

COMMENT=	(X)HTML validation in a Perl object
SHARED_ONLY=	Yes

DISTNAME=	HTML-Tidy-1.08
REVISION=	1
CATEGORIES=	www
MODULES=	cpan

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	tidy::www/tidy

CONFIGURE_ENV+=	LOCALBASE=${LOCALBASE}

.include <bsd.port.mk>
