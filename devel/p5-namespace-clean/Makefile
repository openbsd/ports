# $OpenBSD: Makefile,v 1.3 2009/03/23 09:40:18 simon Exp $

COMMENT =	keep imports and functions out of your namespace

MODULES =	cpan
DISTNAME =	namespace-clean-0.11
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	:p5-B-Hooks-EndOfScope->=0.07:devel/p5-B-Hooks-EndOfScope
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
