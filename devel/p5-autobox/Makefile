# $OpenBSD: Makefile,v 1.2 2014/06/14 23:25:00 sthen Exp $

SHARED_ONLY =		Yes

COMMENT =		pragma to call methods on native types

DISTNAME =		autobox-2.77
REVISION =		0

CATEGORIES =		devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c
MODULES =		cpan

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-Scope-Guard

.include <bsd.port.mk>
