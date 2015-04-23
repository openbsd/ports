# $OpenBSD: Makefile,v 1.17 2015/04/23 18:51:17 bluhm Exp $

SHARED_ONLY =		Yes

COMMENT =		provide the stuff missing in List::Util

DISTNAME =		List-MoreUtils-0.410

CATEGORIES =		devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c

MODULES =		cpan
RUN_DEPENDS =		devel/p5-Exporter-Tiny
TEST_DEPENDS =		devel/p5-Test-LeakTrace

.include <bsd.port.mk>
