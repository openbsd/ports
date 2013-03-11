# $OpenBSD: Makefile,v 1.6 2013/03/11 11:44:44 espie Exp $

COMMENT =	file cache extension for Catalyst (deprecated)

MODULES =	cpan
DISTNAME =	Catalyst-Plugin-Cache-FileCache-0.7
REVISION =	1
CATEGORIES =	www
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

CPAN_AUTHOR =	MRAMBERG

RUN_DEPENDS =	devel/p5-Cache-Cache \
		devel/p5-Class-Data-Inheritable \
		www/p5-Catalyst-Runtime

MAKE_ENV +=	TEST_POD=1

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
