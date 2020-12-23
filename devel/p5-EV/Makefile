# $OpenBSD: Makefile,v 1.21 2020/12/23 13:30:12 sthen Exp $

COMMENT =	perl interface to libev

MODULES =	cpan
DISTNAME =	EV-4.33
CATEGORIES =	devel
CPAN_AUTHOR =	MLEHMANN

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c perl pthread

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/libev \
			devel/p5-common-sense \
			devel/p5-Canary-Stability

.include <bsd.port.mk>
