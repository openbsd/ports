# $OpenBSD: Makefile,v 1.3 2014/12/14 13:33:16 benoit Exp $

SHARED_ONLY =		Yes

COMMENT =		pragma to call methods on native types

DISTNAME =		autobox-2.82

CATEGORIES =		devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c
MODULES =		cpan

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-Scope-Guard

.include <bsd.port.mk>
