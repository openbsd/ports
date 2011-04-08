# $OpenBSD: Makefile,v 1.3 2011/04/08 13:59:15 jasper Exp $

COMMENT =		displays stack trace in HTML

MODULES =		cpan
DISTNAME =		Devel-StackTrace-AsHTML-0.11
CATEGORIES =		devel
MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@verlet.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =		devel/p5-Devel-StackTrace
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
