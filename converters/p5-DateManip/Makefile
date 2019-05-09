# $OpenBSD: Makefile,v 1.23 2019/05/09 14:07:43 afresh1 Exp $

COMMENT =	manipulate dates in perl
V =		6.76
DISTNAME =	Date-Manip-$V
PKGNAME =	p5-DateManip-$V
CATEGORIES =	converters
MODULES =	cpan
PKG_ARCH =	*

MAINTAINER =	Marc Espie <espie@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MAKE_ENV +=		TEST_POD=Yes

TEST_DEPENDS =		devel/p5-Test-Inter

.include <bsd.port.mk>
