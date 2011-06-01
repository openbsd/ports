# $OpenBSD: Makefile,v 1.2 2011/06/01 17:05:00 jasper Exp $

COMMENT	= 	configure-time utilities for using C headers, etc.

MODULES =	cpan
DISTNAME =	ExtUtils-CChecker-0.07
CATEGORIES =	devel

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

CONFIGURE_STYLE	 =	modbuild

REGRESS_DEPENDS =	devel/p5-Test-Fatal \
			devel/p5-Try-Tiny

.include <bsd.port.mk>
