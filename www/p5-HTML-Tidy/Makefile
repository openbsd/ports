# $OpenBSD: Makefile,v 1.19 2019/07/05 11:52:59 sthen Exp $

COMMENT =	(X)HTML validation in a Perl object

DISTNAME =	HTML-Tidy-1.60
CATEGORIES =	www
MODULES =	cpan
REVISION =	0

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c perl tidyp-1

BUILD_DEPENDS =		www/p5-Alien-Tidyp
LIB_DEPENDS =		www/tidyp
TEST_DEPENDS =		devel/p5-Test-Exception

CONFIGURE_ENV +=	LOCALBASE=${LOCALBASE}

.include <bsd.port.mk>
