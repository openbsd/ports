# $OpenBSD: Makefile,v 1.18 2015/05/22 21:39:31 bluhm Exp $

SHARED_ONLY =		Yes

COMMENT =		provide the stuff missing in List::Util

DISTNAME =		List-MoreUtils-0.412

CATEGORIES =		devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c

MODULES =		cpan
RUN_DEPENDS =		devel/p5-Exporter-Tiny
TEST_DEPENDS =		devel/p5-Test-LeakTrace

.include <bsd.port.mk>
