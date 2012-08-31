# $OpenBSD: Makefile,v 1.15 2012/08/31 18:06:36 bluhm Exp $

SHARED_ONLY =		Yes

COMMENT =		powerful feature-rich perl source code profiler

DISTNAME =		Devel-NYTProf-4.08

CATEGORIES =		devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=		c z

MODULES =		cpan
RUN_DEPENDS =		converters/p5-JSON-Any
REGRESS_DEPENDS =	devel/p5-Sub-Name>=0.05

USE_GROFF =		Yes

.include <bsd.port.mk>
