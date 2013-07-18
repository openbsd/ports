# $OpenBSD: Makefile,v 1.23 2013/07/18 13:04:17 bluhm Exp $

SHARED_ONLY =		Yes

COMMENT =		powerful feature-rich perl source code profiler

DISTNAME =		Devel-NYTProf-5.05
REVISION =		1

CATEGORIES =		devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c z

MODULES =		cpan
RUN_DEPENDS =		converters/p5-JSON-Any
TEST_DEPENDS =		devel/p5-Sub-Name>=0.05 \
			devel/p5-Test-Differences>=0.60

.include <bsd.port.mk>
