# $OpenBSD: Makefile,v 1.10 2020/07/03 21:45:20 sthen Exp $

COMMENT =		pragma to call methods on native types

DISTNAME =		autobox-2.86
REVISION =		0

CATEGORIES =		devel

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB +=		c perl
MODULES =		cpan

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-Scope-Guard \
			devel/p5-IPC-System-Simple

.include <bsd.port.mk>
