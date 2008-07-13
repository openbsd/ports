# $OpenBSD: Makefile,v 1.1.1.1 2008/07/13 18:37:38 simon Exp $

COMMENT =	file cache extension for Catalyst

MODULES =	cpan
DISTNAME =	Catalyst-Plugin-Cache-FileCache-0.7
CATEGORIES =	www

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

CPAN_AUTHOR =	MRAMBERG

RUN_DEPENDS =	::devel/p5-Cache-Cache \
		::devel/p5-Class-Data-Inheritable \
		::www/p5-Catalyst-Runtime
BUILD_DEPENDS =	${RUN_DEPENDS}

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
