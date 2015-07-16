# $OpenBSD: Makefile,v 1.15 2015/07/16 23:57:28 ajacoutot Exp $

COMMENT =	(X)HTML validation in a Perl object
SHARED_ONLY =	Yes

DISTNAME =	HTML-Tidy-1.56
CATEGORIES =	www
MODULES =	cpan
REVISION =	0

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c tidyp

BUILD_DEPENDS =		www/p5-Alien-Tidyp
LIB_DEPENDS =		www/tidyp

CONFIGURE_ENV +=	LOCALBASE=${LOCALBASE}

.include <bsd.port.mk>
