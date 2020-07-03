# $OpenBSD: Makefile,v 1.22 2020/07/03 21:46:02 sthen Exp $

COMMENT =	(X)HTML validation in a Perl object

DISTNAME =	HTML-Tidy-1.60
CATEGORIES =	www
MODULES =	cpan
REVISION =	2

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB +=		c perl tidyp-1.04

BUILD_DEPENDS =		www/p5-Alien-Tidyp
LIB_DEPENDS =		www/tidyp
TEST_DEPENDS =		devel/p5-Test-Exception

CONFIGURE_ENV +=	LOCALBASE=${LOCALBASE}

.include <bsd.port.mk>
