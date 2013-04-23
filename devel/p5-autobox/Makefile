# $OpenBSD: Makefile,v 1.1.1.1 2013/04/23 18:58:20 landry Exp $

SHARED_ONLY =		Yes

COMMENT =		pragma to call methods on native types

DISTNAME =		autobox-2.77

CATEGORIES =		devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c
MODULES =		cpan

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-Scope-Guard

.include <bsd.port.mk>
