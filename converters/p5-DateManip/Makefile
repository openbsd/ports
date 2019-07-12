# $OpenBSD: Makefile,v 1.24 2019/07/12 20:43:50 sthen Exp $

COMMENT =	manipulate dates in perl
V =		6.76
DISTNAME =	Date-Manip-$V
PKGNAME =	p5-DateManip-$V
CATEGORIES =	converters
MODULES =	cpan
PKG_ARCH =	*

MAINTAINER =	Marc Espie <espie@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MAKE_ENV +=		TEST_POD=Yes

TEST_DEPENDS =		devel/p5-Test-Inter

.include <bsd.port.mk>
