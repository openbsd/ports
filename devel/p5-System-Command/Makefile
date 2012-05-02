# $OpenBSD: Makefile,v 1.2 2012/05/02 14:32:24 okan Exp $

COMMENT = 	object for running system commands

MODULES =	cpan
DISTNAME =	System-Command-1.07
CATEGORIES =	devel

MAINTAINER =	Wen Heping <wenheping@gmail.com>

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

CONFIGURE_STYLE =	modbuild

MAKE_ENV +=		TEST_POD=yes

REGRESS_DEPENDS =	devel/p5-Test-Output

.include <bsd.port.mk>
