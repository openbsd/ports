# $OpenBSD $

COMMENT =	sets body for redirect response, if it's not already set

MODULES =	cpan
DISTNAME =	Plack-Middleware-FixMissingBodyInRedirect-0.12
CATEGORIES =	www

MAINTAINER =	Cesare Gargano <gar@plusiagamma.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =	${RUN_DEPENDS}

RUN_DEPENDS =	www/p5-HTML-Parser \
		www/p5-Plack

TEST_DEPENDS =	www/p5-HTTP-Message \
		www/p5-Plack

.include <bsd.port.mk>
