# $OpenBSD: Makefile,v 1.8 2019/07/12 20:44:52 sthen Exp $

COMMENT =		displays stack trace in HTML

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Devel-StackTrace-AsHTML-0.15
CATEGORIES =		devel
MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@verlet.org>

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		devel/p5-Devel-StackTrace
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
