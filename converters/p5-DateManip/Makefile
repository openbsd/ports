# $OpenBSD: Makefile,v 1.20 2013/03/11 01:30:27 espie Exp $

COMMENT =	manipulate dates in perl
DISTNAME =	Date-Manip-6.14
PKGNAME =	p5-DateManip-6.14
REVISION =	0
CATEGORIES =	converters
MODULES =	cpan
USE_GROFF =	Yes

MAINTAINER =	Marc Espie <espie@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	modbuild

# CPAN has issues and hasn't been hosting the distfile for a while now.
MASTER_SITES = 		http://distfiles.nl/

MAKE_ENV +=      	TEST_POD=Yes

BUILD_DEPENDS =		devel/p5-Test-Inter
RUN_DEPENDS =		devel/p5-YAML-Syck

MODCPAN_EXAMPLES =	Yes

.include <bsd.port.mk>
