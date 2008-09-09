# $OpenBSD: Makefile,v 1.1.1.1 2008/09/09 21:14:09 simon Exp $

COMMENT =	inherit file attributes from parent directories

MODULES =	cpan
DISTNAME =	File-Attributes-Recursive-0.02
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	::devel/p5-File-Attributes \
		::devel/p5-Path-Class

# p5-Directory-Scratch should be REGRESS_DEPENDS but Module::Install screws up
BUILD_DEPENDS =	${RUN_DEPENDS} \
		::devel/p5-Directory-Scratch

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
