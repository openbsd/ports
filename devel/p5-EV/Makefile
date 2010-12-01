# $OpenBSD: Makefile,v 1.1.1.1 2010/12/01 14:27:57 millert Exp $

SHARED_ONLY =	Yes
COMMENT =	perl interface to libev

MODULES =	cpan
DISTNAME =	EV-3.9
CATEGORIES =	devel 
CPAN_AUTHOR =	MLEHMANN

# Perl
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes

WANTLIB =		pthread
BUILD_DEPENDS =		devel/libev
RUN_DEPENDS =		${BUILD_DEPENDS}

.include <bsd.port.mk>
