# $OpenBSD: Makefile,v 1.5 2014/11/11 13:04:01 gonzalo Exp $

COMMENT =		displays stack trace in HTML

MODULES =		cpan
DISTNAME =		Devel-StackTrace-AsHTML-0.14
CATEGORIES =		devel
MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@verlet.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		devel/p5-Devel-StackTrace
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
