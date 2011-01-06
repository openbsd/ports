# $OpenBSD: Makefile,v 1.2 2011/01/06 20:46:51 landry Exp $

COMMENT =		displays stack trace in HTML

MODULES =		cpan
DISTNAME =		Devel-StackTrace-AsHTML-0.09
REVISION =		0
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
