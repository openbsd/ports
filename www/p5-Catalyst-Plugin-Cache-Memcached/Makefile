# $OpenBSD: Makefile,v 1.6 2013/03/11 11:44:44 espie Exp $

COMMENT =	distributed cache for Catalyst (deprecated)

MODULES =	cpan
DISTNAME =	Catalyst-Plugin-Cache-Memcached-0.8
EPOCH =		0
CATEGORIES =	www
USE_GROFF =	Yes

MAINTAINER =	Jim Razmus <jim@bonetruck.org>

# Same as Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Cache-Memcached \
		www/p5-Catalyst-Runtime

MAKE_ENV +=	TEST_POD=1

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
