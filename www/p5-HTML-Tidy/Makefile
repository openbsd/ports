# $OpenBSD: Makefile,v 1.11 2013/03/11 11:44:46 espie Exp $

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

WANTLIB += c tidyp

BUILD_DEPENDS=	www/p5-Alien-Tidyp
LIB_DEPENDS=	www/tidyp

CONFIGURE_ENV+=	LOCALBASE=${LOCALBASE}

.include <bsd.port.mk>
