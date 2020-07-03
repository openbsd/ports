# $OpenBSD: Makefile,v 1.20 2020/07/03 21:44:50 sthen Exp $

COMMENT =	perl interface to libev

MODULES =	cpan
DISTNAME =	EV-4.27
CATEGORIES =	devel
CPAN_AUTHOR =	MLEHMANN
REVISION =	0

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c perl pthread

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/libev \
			devel/p5-common-sense \
			devel/p5-Canary-Stability

.include <bsd.port.mk>
