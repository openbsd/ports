# $OpenBSD: Makefile,v 1.9 2015/06/25 09:56:15 dcoppa Exp $

SHARED_ONLY =	Yes
COMMENT =	perl interface to libev

MODULES =	cpan
DISTNAME =	EV-4.20
CATEGORIES =	devel
CPAN_AUTHOR =	MLEHMANN

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c pthread

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/libev \
			devel/p5-common-sense \
			devel/p5-Canary-Stability

.include <bsd.port.mk>
