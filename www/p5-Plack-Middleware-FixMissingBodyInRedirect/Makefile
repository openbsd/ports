# $OpenBSD: Makefile,v 1.5 2019/07/12 20:50:57 sthen Exp $

COMMENT =	sets body for redirect response, if it's not already set

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Plack-Middleware-FixMissingBodyInRedirect-0.12
CATEGORIES =	www
REVISION =	0

# Perl
PERMIT_PACKAGE =	Yes

BUILD_DEPENDS =	${RUN_DEPENDS}

RUN_DEPENDS =	www/p5-HTML-Parser \
		www/p5-Plack

TEST_DEPENDS =	www/p5-HTTP-Message \
		www/p5-Plack

.include <bsd.port.mk>
