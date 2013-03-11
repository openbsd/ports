# $OpenBSD: Makefile,v 1.21 2013/03/11 10:50:16 espie Exp $

SHARED_ONLY =		Yes

COMMENT =		powerful feature-rich perl source code profiler

DISTNAME =		Devel-NYTProf-4.25

CATEGORIES =		devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c z

MODULES =		cpan
RUN_DEPENDS =		converters/p5-JSON-Any
TEST_DEPENDS =	devel/p5-Sub-Name>=0.05

USE_GROFF =		Yes

.include <bsd.port.mk>
