# $OpenBSD: Makefile,v 1.6 2016/09/02 22:29:21 jasper Exp $

COMMENT =		pragma to call methods on native types

DISTNAME =		autobox-2.84

CATEGORIES =		devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c perl
MODULES =		cpan

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-Scope-Guard

.include <bsd.port.mk>
