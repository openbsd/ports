# $OpenBSD: Makefile,v 1.10 2019/05/19 19:58:52 danj Exp $

COMMENT =	distributed cache for Catalyst (deprecated)

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Catalyst-Plugin-Cache-Memcached-0.8
REVISION =	1
EPOCH =		0
CATEGORIES =	www

# Same as Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Cache-Memcached \
		www/p5-Catalyst-Runtime

MAKE_ENV +=	TEST_POD=1

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
