# $OpenBSD: Makefile,v 1.14 2015/01/21 14:43:33 sthen Exp $

COMMENT =	(X)HTML validation in a Perl object
SHARED_ONLY =	Yes

DISTNAME =	HTML-Tidy-1.56
CATEGORIES =	www
MODULES =	cpan

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c tidyp

BUILD_DEPENDS =		www/p5-Alien-Tidyp
LIB_DEPENDS =		www/tidyp

CONFIGURE_ENV +=	LOCALBASE=${LOCALBASE}

.include <bsd.port.mk>
