# $OpenBSD: Makefile,v 1.9 2009/12/26 20:11:14 stephan Exp $

COMMENT = 	Perl library for manipulating frame stack

MODULES =	cpan
DISTNAME =	Sub-Uplevel-0.22
PKGNAME =	p5-${DISTNAME}v0
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

CONFIGURE_STYLE =	modbuild

MAKE_ENV =	AUTHOR_TESTING=Yes \
		TEST_POD=Yes

.include <bsd.port.mk>
