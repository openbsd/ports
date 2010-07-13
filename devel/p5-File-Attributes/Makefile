# $OpenBSD: Makefile,v 1.3 2010/07/13 19:46:12 sthen Exp $

COMMENT =	manipulate file metadata

MODULES =	cpan
DISTNAME =	File-Attributes-0.04
REVISION =	0
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	::devel/p5-Best \
		::devel/p5-YAML

# p5-Directory-Scratch should be REGRESS_DEPENDS but Module::Install screws up
BUILD_DEPENDS =	${RUN_DEPENDS} \
		::devel/p5-Directory-Scratch \
		::devel/p5-YAML-Syck

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
