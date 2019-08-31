# $OpenBSD: Makefile,v 1.19 2019/08/31 17:21:33 sthen Exp $

COMMENT =	perl interface to libev

MODULES =	cpan
DISTNAME =	EV-4.27
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
