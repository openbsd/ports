# $OpenBSD: Makefile,v 1.22 2016/03/20 19:56:07 naddy Exp $

COMMENT =	manipulate dates in perl
V =		6.39
DISTNAME =	Date-Manip-$V
PKGNAME =	p5-DateManip-$V
CATEGORIES =	converters
MODULES =	cpan
PKG_ARCH =	*

MAINTAINER =	Marc Espie <espie@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	modbuild

MAKE_ENV +=		TEST_POD=Yes

BUILD_DEPENDS =		devel/p5-Test-Inter

.include <bsd.port.mk>
