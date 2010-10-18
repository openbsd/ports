# $OpenBSD: Makefile,v 1.3 2010/10/18 17:47:57 espie Exp $

COMMENT =	provides Moose-like method modifiers

MODULES =	cpan
DISTNAME =	Class-Method-Modifiers-1.04
CATEGORIES =	devel
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

REGRESS_DEPENDS =	::devel/p5-Test-Exception

CONFIGURE_ARGS =	--skipdeps

.include <bsd.port.mk>
