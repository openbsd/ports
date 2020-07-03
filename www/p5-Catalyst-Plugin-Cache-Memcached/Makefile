# $OpenBSD: Makefile,v 1.12 2020/07/03 21:45:57 sthen Exp $

COMMENT =	distributed cache for Catalyst (deprecated)

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Catalyst-Plugin-Cache-Memcached-0.8
REVISION =	2
EPOCH =		0
CATEGORIES =	www

# Same as Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-Cache-Memcached \
		www/p5-Catalyst-Runtime

MAKE_ENV +=	TEST_POD=1

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
