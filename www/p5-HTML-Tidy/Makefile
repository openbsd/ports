# $OpenBSD: Makefile,v 1.10 2012/08/23 16:02:37 sthen Exp $

COMMENT=	(X)HTML validation in a Perl object
SHARED_ONLY=	Yes

DISTNAME=	HTML-Tidy-1.54
REVISION=	0
CATEGORIES=	www
MODULES=	cpan
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c tidyp

BUILD_DEPENDS=	www/p5-Alien-Tidyp
LIB_DEPENDS=	www/tidyp

CONFIGURE_ENV+=	LOCALBASE=${LOCALBASE}

.include <bsd.port.mk>
