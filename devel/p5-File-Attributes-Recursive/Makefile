# $OpenBSD: Makefile,v 1.6 2015/01/21 14:27:57 sthen Exp $

COMMENT =	inherit file attributes from parent directories

MODULES =	cpan
DISTNAME =	File-Attributes-Recursive-0.02
REVISION =	0
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-File-Attributes \
		devel/p5-Path-Class

# p5-Directory-Scratch should be TEST_DEPENDS but Module::Install screws up
BUILD_DEPENDS =	${RUN_DEPENDS} \
		devel/p5-Directory-Scratch

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
