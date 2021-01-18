# $OpenBSD: Makefile,v 1.1.1.1 2021/01/18 13:37:20 robert Exp $

COMMENT =		HTML5 parser based on gumbo C library

MODULES =		cpan
DISTNAME =		HTML-Gumbo-0.18
CATEGORIES =		www

RUN_DEPENDS =		devel/p5-Alien-LibGumbo
BUILD_DEPENDS =		${RUN_DEPENDS}

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB += c perl gumbo

CONFIGURE_STYLE =	perl modbuild

.include <bsd.port.mk>
