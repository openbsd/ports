# $OpenBSD: Makefile,v 1.12 2019/07/12 20:44:53 sthen Exp $

COMMENT =	manipulate file metadata

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	File-Attributes-0.04
REVISION =	4
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =		Yes

RUN_DEPENDS =	devel/p5-Best \
		devel/p5-Module-Pluggable \
		devel/p5-YAML

# p5-Directory-Scratch should be TEST_DEPENDS but Module::Install screws up
BUILD_DEPENDS =	${RUN_DEPENDS} \
		devel/p5-Directory-Scratch \
		devel/p5-YAML-Syck

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
