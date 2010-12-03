# $OpenBSD: Makefile,v 1.12 2010/12/03 11:44:30 ajacoutot Exp $

SHARED_ONLY =		Yes

COMMENT =		powerful feature-rich perl source code profiler

DISTNAME =		Devel-NYTProf-4.05
REVISION =		0

CATEGORIES =		devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		z

MODULES =		cpan
USE_GROFF =		Yes
RUN_DEPENDS =		converters/p5-JSON-Any
REGRESS_DEPENDS =	devel/p5-Sub-Name>=0.05

.include <bsd.port.mk>
