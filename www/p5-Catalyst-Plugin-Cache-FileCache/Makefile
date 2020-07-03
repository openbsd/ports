# $OpenBSD: Makefile,v 1.11 2020/07/03 21:45:57 sthen Exp $

COMMENT =	file cache extension for Catalyst (deprecated)

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Catalyst-Plugin-Cache-FileCache-0.7
REVISION =	3
CATEGORIES =	www

# Perl
PERMIT_PACKAGE =	Yes

CPAN_AUTHOR =	MRAMBERG

RUN_DEPENDS =	devel/p5-Cache-Cache \
		devel/p5-Class-Data-Inheritable \
		www/p5-Catalyst-Runtime

MAKE_ENV +=	TEST_POD=1

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
