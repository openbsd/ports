# $OpenBSD: Makefile,v 1.21 2013/04/10 13:15:14 sthen Exp $

COMMENT =	manipulate dates in perl
V =		6.39
DISTNAME =	Date-Manip-$V
PKGNAME =	p5-DateManip-$V
CATEGORIES =	converters
MODULES =	cpan

MAINTAINER =	Marc Espie <espie@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	modbuild

MAKE_ENV +=		TEST_POD=Yes

BUILD_DEPENDS =		devel/p5-Test-Inter

.include <bsd.port.mk>
