# $OpenBSD: Makefile,v 1.9 2020/02/05 09:59:18 benoit Exp $

COMMENT =		pragma to call methods on native types

DISTNAME =		autobox-2.86

CATEGORIES =		devel

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB +=		c perl
MODULES =		cpan

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-Scope-Guard \
			devel/p5-IPC-System-Simple

.include <bsd.port.mk>
