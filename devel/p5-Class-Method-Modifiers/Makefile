# $OpenBSD: Makefile,v 1.1.1.1 2008/08/20 13:44:29 simon Exp $

COMMENT =	provides Moose-like method modifiers

MODULES =	cpan
DISTNAME =	Class-Method-Modifiers-1.01
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	::devel/p5-MRO-Compat
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
