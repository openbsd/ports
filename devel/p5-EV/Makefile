# $OpenBSD: Makefile,v 1.8 2014/06/14 23:24:56 sthen Exp $

SHARED_ONLY =	Yes
COMMENT =	perl interface to libev

MODULES =	cpan
DISTNAME =	EV-4.15
CATEGORIES =	devel
CPAN_AUTHOR =	MLEHMANN
REVISION =	0

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c pthread

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/libev \
			devel/p5-common-sense

.include <bsd.port.mk>
