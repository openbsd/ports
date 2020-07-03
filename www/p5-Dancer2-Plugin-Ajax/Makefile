# $OpenBSD: Makefile,v 1.6 2020/07/03 21:45:59 sthen Exp $

COMMENT =		a plugin for adding Ajax route handlers

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Dancer2-Plugin-Ajax-0.200000
CATEGORIES =		www
REVISION =		1

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		www/p5-Dancer2>=0.155000

TEST_DEPENDS =		www/p5-HTTP-Message \
			www/p5-Plack

.include <bsd.port.mk>
