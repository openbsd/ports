# $OpenBSD: Makefile,v 1.1.1.1 2008/06/01 13:53:05 simon Exp $

COMMENT =	distributed cache for Catalyst

MODULES =	cpan
DISTNAME =	Catalyst-Plugin-Cache-Memcached-0.71
CATEGORIES =	www

MAINTAINER =	Jim Razmus <jim@bonetruck.org>

# Same as Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

CPAN_AUTHOR =	MRAMBERG

RUN_DEPENDS =	::devel/p5-Cache-Memcached \
		::www/p5-Catalyst-Runtime
BUILD_DEPENDS =	${RUN_DEPENDS}

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
