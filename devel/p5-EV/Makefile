# $OpenBSD: Makefile,v 1.3 2011/03/05 11:33:44 sthen Exp $

SHARED_ONLY =	Yes
COMMENT =	perl interface to libev

MODULES =	cpan
DISTNAME =	EV-3.9
REVISION =	0
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
REGRESS_DEPENDS =	devel/p5-common-sense

.include <bsd.port.mk>
