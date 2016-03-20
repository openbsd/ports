# $OpenBSD: Makefile,v 1.4 2016/03/20 19:57:20 naddy Exp $

COMMENT =		faster implementation of HTTP::Headers

MODULES =		cpan
PKG_ARCH =		*
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
