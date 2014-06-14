# $OpenBSD: Makefile,v 1.16 2014/06/14 23:24:57 sthen Exp $

SHARED_ONLY =		Yes

COMMENT =		perl5 extra list utilities

DISTNAME =		List-MoreUtils-0.33
REVISION =		1

CATEGORIES =		devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MODULES =		cpan
TEST_DEPENDS =	devel/p5-Test-Pod-Coverage \
			devel/p5-Test-Pod

.include <bsd.port.mk>
