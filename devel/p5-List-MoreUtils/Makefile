# $OpenBSD: Makefile,v 1.22 2016/07/11 10:52:40 bluhm Exp $

COMMENT =		provide the stuff missing in List::Util

DISTNAME =		List-MoreUtils-0.416

CATEGORIES =		devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c perl

MODULES =		cpan
RUN_DEPENDS =		devel/p5-Exporter-Tiny
TEST_DEPENDS =		devel/p5-Test-LeakTrace

.include <bsd.port.mk>
