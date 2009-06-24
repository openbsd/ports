# $OpenBSD: Makefile,v 1.2 2009/06/24 18:45:51 simon Exp $

COMMENT =	provides Moose-like method modifiers

MODULES =	cpan
DISTNAME =	Class-Method-Modifiers-1.04
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

REGRESS_DEPENDS =	::devel/p5-Test-Exception

CONFIGURE_ARGS =	--skipdeps

.include <bsd.port.mk>
