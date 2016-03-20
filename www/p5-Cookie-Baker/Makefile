# $OpenBSD: Makefile,v 1.2 2016/03/20 19:57:16 naddy Exp $

COMMENT =		cookie string generator / parser

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Cookie-Baker-0.06
CATEGORIES =		www

MAINTAINER =		Cesare Gargano <gar@plusiagamma.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		www/p5-URI

TEST_DEPENDS =		devel/p5-Test-Time \
			www/p5-URI

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
