# $OpenBSD: Makefile,v 1.9 2016/03/20 19:57:15 naddy Exp $

COMMENT =	distributed cache for Catalyst (deprecated)

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Catalyst-Plugin-Cache-Memcached-0.8
REVISION =	0
EPOCH =		0
CATEGORIES =	www

MAINTAINER =	Jim Razmus II <jim@openbsd.org>

# Same as Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Cache-Memcached \
		www/p5-Catalyst-Runtime

MAKE_ENV +=	TEST_POD=1

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
