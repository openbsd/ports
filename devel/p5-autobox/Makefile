# $OpenBSD: Makefile,v 1.7 2017/03/01 13:52:46 benoit Exp $

COMMENT =		pragma to call methods on native types

DISTNAME =		autobox-2.85

CATEGORIES =		devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c perl
MODULES =		cpan

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-Scope-Guard

.include <bsd.port.mk>
