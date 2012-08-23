# $OpenBSD: Makefile,v 1.5 2012/08/23 15:05:15 sthen Exp $

SHARED_ONLY =	Yes
COMMENT =	perl interface to libev

MODULES =	cpan
DISTNAME =	EV-3.9
REVISION =	2
CATEGORIES =	devel 
CPAN_AUTHOR =	MLEHMANN

# Perl
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes

WANTLIB =		c pthread
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/libev
REGRESS_DEPENDS =	devel/p5-common-sense

.include <bsd.port.mk>
