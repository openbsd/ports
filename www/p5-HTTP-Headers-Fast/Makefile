# $OpenBSD: Makefile,v 1.3 2015/11/27 21:45:25 benoit Exp $

COMMENT =		faster implementation of HTTP::Headers

MODULES =		cpan
DISTNAME =		HTTP-Headers-Fast-0.20
CATEGORIES =		www

MAINTAINER =		Cesare Gargano <gar@plusiagamma.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS = 		www/p5-HTTP-Date

TEST_DEPENDS =		devel/p5-Test-Requires \
			www/p5-HTTP-Message \
			www/p5-URI

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
