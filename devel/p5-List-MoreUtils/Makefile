# $OpenBSD: Makefile,v 1.20 2016/03/20 19:56:26 naddy Exp $

COMMENT =		provide the stuff missing in List::Util

DISTNAME =		List-MoreUtils-0.413

CATEGORIES =		devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c perl

MODULES =		cpan
RUN_DEPENDS =		devel/p5-Exporter-Tiny
TEST_DEPENDS =		devel/p5-Test-LeakTrace

.include <bsd.port.mk>
