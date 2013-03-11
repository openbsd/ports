# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:16 espie Exp $

SHARED_ONLY =	Yes
COMMENT =	perl interface to libev

MODULES =	cpan
DISTNAME =	EV-3.9
REVISION =	2
CATEGORIES =	devel 
CPAN_AUTHOR =	MLEHMANN

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c pthread
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/libev
TEST_DEPENDS =	devel/p5-common-sense

.include <bsd.port.mk>
