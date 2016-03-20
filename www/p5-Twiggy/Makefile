# $OpenBSD: Makefile,v 1.2 2016/03/20 19:57:22 naddy Exp $

COMMENT =		AnyEvent HTTP server for PSGI (like Thin)

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Twiggy-0.1025
CATEGORIES =		www

MAINTAINER =		Cesare Gargano <gar@plusiagamma.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

CPAN_AUTHOR =		MIYAGAWA

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/p5-AnyEvent \
			www/p5-HTTP-Message \
			www/p5-Plack>=0.99 \
			devel/p5-Try-Tiny

TEST_DEPENDS =		devel/p5-AnyEvent-HTTP \
			www/p5-HTTP-Message \
			www/p5-Plack \
			devel/p5-Test-Requires \
			net/p5-Test-TCP

.include <bsd.port.mk>
