# $OpenBSD: Makefile,v 1.6 2010/05/20 20:04:35 bluhm Exp $

SHARED_ONLY =		Yes

COMMENT =		powerful feature-rich perl source code profiler

DISTNAME =		Devel-NYTProf-3.11

CATEGORIES =		devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		z

MODULES =		cpan
RUN_DEPENDS =		::converters/p5-JSON-Any

.include <bsd.port.mk>
