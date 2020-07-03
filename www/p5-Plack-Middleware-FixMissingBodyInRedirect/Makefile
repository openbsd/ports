# $OpenBSD: Makefile,v 1.6 2020/07/03 21:46:05 sthen Exp $

COMMENT =	sets body for redirect response, if it's not already set

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Plack-Middleware-FixMissingBodyInRedirect-0.12
CATEGORIES =	www
REVISION =	1

# Perl
PERMIT_PACKAGE =	Yes

BUILD_DEPENDS =	${RUN_DEPENDS}

RUN_DEPENDS =	www/p5-HTML-Parser \
		www/p5-Plack

TEST_DEPENDS =	www/p5-HTTP-Message \
		www/p5-Plack

.include <bsd.port.mk>
