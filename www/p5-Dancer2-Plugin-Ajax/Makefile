# $OpenBSD: Makefile,v 1.4 2019/05/01 19:57:08 sthen Exp $

COMMENT =		a plugin for adding Ajax route handlers

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Dancer2-Plugin-Ajax-0.200000
CATEGORIES =		www
REVISION =		0

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		www/p5-Dancer2>=0.155000

TEST_DEPENDS =		www/p5-HTTP-Message \
			www/p5-Plack

.include <bsd.port.mk>
