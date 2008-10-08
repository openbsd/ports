# $OpenBSD: Makefile,v 1.2 2008/10/08 08:08:08 simon Exp $

COMMENT =	cache the output of entire pages

MODULES =	cpan
DISTNAME =	Catalyst-Plugin-PageCache-0.21
CATEGORIES =	www

MAINTAINER =	Jim Razmus <jim@bonetruck.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =	::www/p5-Catalyst-Runtime \
		::www/p5-Catalyst-Plugin-Cache-FileCache
BUILD_DEPENDS =	${RUN_DEPENDS}

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
