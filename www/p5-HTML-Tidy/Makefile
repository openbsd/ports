# $OpenBSD: Makefile,v 1.13 2014/11/12 13:03:49 benoit Exp $

COMMENT =	(X)HTML validation in a Perl object
SHARED_ONLY =	Yes

DISTNAME =	HTML-Tidy-1.56
CATEGORIES =	www
MODULES =	cpan

USE_GROFF =	Yes

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c tidyp

BUILD_DEPENDS =		www/p5-Alien-Tidyp
LIB_DEPENDS =		www/tidyp

CONFIGURE_ENV +=	LOCALBASE=${LOCALBASE}

.include <bsd.port.mk>
