# $OpenBSD: Makefile,v 1.9 2011/03/15 19:47:10 jasper Exp $

COMMENT=	(X)HTML validation in a Perl object
SHARED_ONLY=	Yes

DISTNAME=	HTML-Tidy-1.54
CATEGORIES=	www
MODULES=	cpan
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += tidyp

BUILD_DEPENDS=	www/p5-Alien-Tidyp
LIB_DEPENDS=	www/tidyp

CONFIGURE_ENV+=	LOCALBASE=${LOCALBASE}

.include <bsd.port.mk>
