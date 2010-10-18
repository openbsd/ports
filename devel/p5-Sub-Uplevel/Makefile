# $OpenBSD: Makefile,v 1.10 2010/10/18 17:48:07 espie Exp $

COMMENT = 	Perl library for manipulating frame stack

MODULES =	cpan
DISTNAME =	Sub-Uplevel-0.22
PKGNAME =	p5-${DISTNAME}v0
CATEGORIES =	devel
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

CONFIGURE_STYLE =	modbuild

MAKE_ENV =	AUTHOR_TESTING=Yes \
		TEST_POD=Yes

.include <bsd.port.mk>
