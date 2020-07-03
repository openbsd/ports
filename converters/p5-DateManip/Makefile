# $OpenBSD: Makefile,v 1.25 2020/07/03 21:44:32 sthen Exp $

COMMENT =	manipulate dates in perl
V =		6.76
DISTNAME =	Date-Manip-$V
PKGNAME =	p5-DateManip-$V
CATEGORIES =	converters
MODULES =	cpan
PKG_ARCH =	*
REVISION =	0

MAINTAINER =	Marc Espie <espie@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MAKE_ENV +=		TEST_POD=Yes

TEST_DEPENDS =		devel/p5-Test-Inter

.include <bsd.port.mk>
