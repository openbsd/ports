# $OpenBSD: Makefile,v 1.7 2020/08/18 02:41:53 afresh1 Exp $

COMMENT =		plugin for adding Ajax route handlers

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Dancer2-Plugin-Ajax-0.400000
CATEGORIES =		www

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		www/p5-Dancer2>=0.200000

TEST_DEPENDS =		www/p5-HTTP-Message \
			www/p5-Plack

.include <bsd.port.mk>
