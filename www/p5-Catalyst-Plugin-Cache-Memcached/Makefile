# $OpenBSD: Makefile,v 1.11 2019/07/12 20:50:51 sthen Exp $

COMMENT =	distributed cache for Catalyst (deprecated)

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Catalyst-Plugin-Cache-Memcached-0.8
REVISION =	1
EPOCH =		0
CATEGORIES =	www

# Same as Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-Cache-Memcached \
		www/p5-Catalyst-Runtime

MAKE_ENV +=	TEST_POD=1

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
