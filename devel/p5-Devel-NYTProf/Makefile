# $OpenBSD: Makefile,v 1.33 2017/12/05 16:25:45 espie Exp $

COMMENT =	powerful feature-rich perl source code profiler

DISTNAME =	Devel-NYTProf-6.04

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>
FIX_EXTRACT_PERMISSIONS=Yes

# perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c perl z

MODULES =		cpan
RUN_DEPENDS =		converters/p5-JSON-MaybeXS \
			sysutils/p5-File-Which>=1.09
TEST_DEPENDS =		devel/p5-Sub-Name>=0.05 \
			devel/p5-Test-Differences>=0.60 \
			devel/p5-Test-Portability-Files

.include <bsd.port.mk>
