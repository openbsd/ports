# $OpenBSD: Makefile,v 1.6 2016/03/20 19:56:20 naddy Exp $

COMMENT =		displays stack trace in HTML

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Devel-StackTrace-AsHTML-0.14
CATEGORIES =		devel
MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@verlet.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		devel/p5-Devel-StackTrace
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
