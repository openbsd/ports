# $OpenBSD: Makefile,v 1.5 2016/03/20 19:56:42 naddy Exp $

COMMENT =		pragma to call methods on native types

DISTNAME =		autobox-2.83

CATEGORIES =		devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c perl
MODULES =		cpan

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-Scope-Guard

.include <bsd.port.mk>
