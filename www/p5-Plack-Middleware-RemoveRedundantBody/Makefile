# $OpenBSD: Makefile,v 1.1.1.1 2015/01/11 07:53:08 benoit Exp $

COMMENT =		removes body for HTTP response if it's not required

MODULES =		cpan
DISTNAME =		Plack-Middleware-RemoveRedundantBody-0.05
CATEGORIES =		www

MAINTAINER =		Cesare Gargano <gar@plusiagamma.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		www/p5-Plack

TEST_DEPENDS =		www/p5-HTTP-Message \
			www/p5-Plack

.include <bsd.port.mk>
