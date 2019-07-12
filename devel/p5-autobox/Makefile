# $OpenBSD: Makefile,v 1.8 2019/07/12 20:45:14 sthen Exp $

COMMENT =		pragma to call methods on native types

DISTNAME =		autobox-2.85

CATEGORIES =		devel

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB +=		c perl
MODULES =		cpan

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-Scope-Guard

.include <bsd.port.mk>
