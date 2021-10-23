# $OpenBSD: Makefile,v 1.7 2021/09/01 21:00:08 ajacoutot Exp $

COMMENT =	Fast & minimal low-level HTTP client

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Hijk-0.28
CATEGORIES =	www

CPAN_AUTHOR =	GUGOD

# Perl
PERMIT_PACKAGE =	Yes

CONFIGURE_STYLE =	modbuild tiny

TEST_DEPENDS =	devel/p5-Net-Server \
		devel/p5-Test-Exception \
		www/p5-Plack

.include <bsd.port.mk>
