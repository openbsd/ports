# $OpenBSD: Makefile,v 1.5 2010/12/03 11:44:28 ajacoutot Exp $

COMMENT =	provides Moose-like method modifiers

MODULES =	cpan
DISTNAME =	Class-Method-Modifiers-1.04
REVISION =	0
CATEGORIES =	devel
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

REGRESS_DEPENDS =	devel/p5-Test-Exception

CONFIGURE_ARGS =	--skipdeps

.include <bsd.port.mk>
