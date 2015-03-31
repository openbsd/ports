# $OpenBSD: Makefile,v 1.4 2015/03/31 08:47:59 benoit Exp $

SHARED_ONLY =		Yes

COMMENT =		pragma to call methods on native types

DISTNAME =		autobox-2.83

CATEGORIES =		devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c
MODULES =		cpan

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-Scope-Guard

.include <bsd.port.mk>
