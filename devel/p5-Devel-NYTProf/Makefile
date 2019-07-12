# $OpenBSD: Makefile,v 1.36 2019/07/12 20:44:52 sthen Exp $

COMMENT =	powerful feature-rich perl source code profiler

DISTNAME =	Devel-NYTProf-6.06

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>
FIX_EXTRACT_PERMISSIONS=Yes

# perl
PERMIT_PACKAGE =	Yes

WANTLIB +=		c perl z

MODULES =		cpan
RUN_DEPENDS =		converters/p5-JSON-MaybeXS \
			sysutils/p5-File-Which>=1.09
TEST_DEPENDS =		devel/p5-Sub-Name>=0.05 \
			devel/p5-Test-Differences>=0.60 \
			devel/p5-Test-Portability-Files

.include <bsd.port.mk>
