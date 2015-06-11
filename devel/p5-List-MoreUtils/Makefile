# $OpenBSD: Makefile,v 1.19 2015/06/11 16:43:08 bluhm Exp $

SHARED_ONLY =		Yes

COMMENT =		provide the stuff missing in List::Util

DISTNAME =		List-MoreUtils-0.413

CATEGORIES =		devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c

MODULES =		cpan
RUN_DEPENDS =		devel/p5-Exporter-Tiny
TEST_DEPENDS =		devel/p5-Test-LeakTrace

.include <bsd.port.mk>
