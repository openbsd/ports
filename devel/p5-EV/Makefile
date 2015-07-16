# $OpenBSD: Makefile,v 1.10 2015/07/16 23:57:22 ajacoutot Exp $

SHARED_ONLY =	Yes
COMMENT =	perl interface to libev

MODULES =	cpan
DISTNAME =	EV-4.20
CATEGORIES =	devel
CPAN_AUTHOR =	MLEHMANN
REVISION =	0

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c pthread

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/libev \
			devel/p5-common-sense \
			devel/p5-Canary-Stability

.include <bsd.port.mk>
