# $OpenBSD: Makefile,v 1.6 2010/11/11 12:35:14 sthen Exp $

COMMENT=	(X)HTML validation in a Perl object
SHARED_ONLY=	Yes

DISTNAME=	HTML-Tidy-1.08
REVISION=	1
CATEGORIES=	www
MODULES=	cpan
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += tidy

LIB_DEPENDS=	::www/tidy

CONFIGURE_ENV+=	LOCALBASE=${LOCALBASE}

.include <bsd.port.mk>
