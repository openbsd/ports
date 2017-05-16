# $OpenBSD: Makefile,v 1.7 2017/05/16 08:28:08 benoit Exp $

COMMENT =		displays stack trace in HTML

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Devel-StackTrace-AsHTML-0.15
CATEGORIES =		devel
MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@verlet.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		devel/p5-Devel-StackTrace
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
