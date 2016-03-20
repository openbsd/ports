# $OpenBSD: Makefile,v 1.16 2016/03/20 19:57:19 naddy Exp $

COMMENT =	(X)HTML validation in a Perl object

DISTNAME =	HTML-Tidy-1.56
CATEGORIES =	www
MODULES =	cpan
REVISION =	0

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c perl tidyp

BUILD_DEPENDS =		www/p5-Alien-Tidyp
LIB_DEPENDS =		www/tidyp

CONFIGURE_ENV +=	LOCALBASE=${LOCALBASE}

.include <bsd.port.mk>
