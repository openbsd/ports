# $OpenBSD: Makefile,v 1.1.1.1 2008/09/09 21:14:05 simon Exp $

COMMENT =	manipulate file metadata

MODULES =	cpan
DISTNAME =	File-Attributes-0.04
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	::devel/p5-Best \
		::devel/p5-Module-Pluggable \
		::devel/p5-YAML

# p5-Directory-Scratch should be REGRESS_DEPENDS but Module::Install screws up
BUILD_DEPENDS =	${RUN_DEPENDS} \
		::devel/p5-Directory-Scratch \
		::devel/p5-YAML-Syck

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
