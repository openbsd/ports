# $OpenBSD: Makefile,v 1.1.1.1 2015/09/12 04:00:41 landry Exp $

COMMENT =		faster implementation of HTTP::Headers

MODULES =		cpan
DISTNAME =		HTTP-Headers-Fast-0.19
CATEGORIES =		www

MAINTAINER =		Cesare Gargano <gar@plusiagamma.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS = 		www/p5-HTTP-Date

TEST_DEPENDS =		devel/p5-Test-Requires \
			www/p5-URI

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
