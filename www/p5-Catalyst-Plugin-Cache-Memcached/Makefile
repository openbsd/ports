# $OpenBSD: Makefile,v 1.5 2012/04/08 21:58:20 sthen Exp $

COMMENT =	distributed cache for Catalyst (deprecated)

MODULES =	cpan
DISTNAME =	Catalyst-Plugin-Cache-Memcached-0.8
EPOCH =		0
CATEGORIES =	www
USE_GROFF =	Yes

MAINTAINER =	Jim Razmus <jim@bonetruck.org>

# Same as Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =	devel/p5-Cache-Memcached \
		www/p5-Catalyst-Runtime

MAKE_ENV +=	TEST_POD=1

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
