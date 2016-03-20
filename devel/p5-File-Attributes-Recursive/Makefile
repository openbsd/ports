# $OpenBSD: Makefile,v 1.8 2016/03/20 19:56:22 naddy Exp $

COMMENT =	inherit file attributes from parent directories

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	File-Attributes-Recursive-0.02
REVISION =	1
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-File-Attributes \
		devel/p5-Path-Class

# p5-Directory-Scratch should be TEST_DEPENDS but Module::Install screws up
BUILD_DEPENDS =	${RUN_DEPENDS} \
		devel/p5-Directory-Scratch

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
