# $OpenBSD: Makefile,v 1.18 2010/12/03 11:44:23 ajacoutot Exp $

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
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

CONFIGURE_STYLE =	modbuild

MAKE_ENV +=      	TEST_POD=Yes

BUILD_DEPENDS =		devel/p5-Test-Inter
RUN_DEPENDS =		devel/p5-YAML-Syck

MODCPAN_EXAMPLES =	Yes

.include <bsd.port.mk>
