# $OpenBSD: Makefile,v 1.15 2013/03/11 10:50:18 espie Exp $

SHARED_ONLY =		Yes

COMMENT =		perl5 extra list utilities

DISTNAME =		List-MoreUtils-0.33
REVISION =		0

CATEGORIES =		devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MODULES =		cpan
TEST_DEPENDS =	devel/p5-Test-Pod-Coverage \
			devel/p5-Test-Pod

.include <bsd.port.mk>
