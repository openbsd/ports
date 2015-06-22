# $OpenBSD: Makefile,v 1.27 2015/06/22 14:45:52 bluhm Exp $

SHARED_ONLY =		Yes

COMMENT =		powerful feature-rich perl source code profiler

DISTNAME =		Devel-NYTProf-6.01

CATEGORIES =		devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c z

MODULES =		cpan
RUN_DEPENDS =		converters/p5-JSON-Any \
			sysutils/p5-File-Which>=1.09
TEST_DEPENDS =		devel/p5-Sub-Name>=0.05 \
			devel/p5-Test-Differences>=0.60

.include <bsd.port.mk>
