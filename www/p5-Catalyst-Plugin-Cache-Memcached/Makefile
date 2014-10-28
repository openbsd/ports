# $OpenBSD: Makefile,v 1.7 2014/10/28 08:23:06 jasper Exp $

COMMENT =	distributed cache for Catalyst (deprecated)

MODULES =	cpan
DISTNAME =	Catalyst-Plugin-Cache-Memcached-0.8
REVISION =	0
EPOCH =		0
CATEGORIES =	www
USE_GROFF =	Yes

MAINTAINER =	Jim Razmus II <jim@openbsd.org>

# Same as Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Cache-Memcached \
		www/p5-Catalyst-Runtime

MAKE_ENV +=	TEST_POD=1

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
