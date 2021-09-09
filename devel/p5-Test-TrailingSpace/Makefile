# $OpenBSD: Makefile,v 1.11 2021/09/09 00:19:36 bluhm Exp $

COMMENT =	test for trailing space in source files

DISTNAME =	Test-TrailingSpace-0.0601

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		cpan
BUILD_DEPENDS =		devel/p5-Module-Build>=0.28
RUN_DEPENDS =		devel/p5-File-Find-Object-Rule>=0.0301
TEST_DEPENDS =		devel/p5-File-TreeCreate

CONFIGURE_STYLE =	modbuild

PKG_ARCH =		*

.include <bsd.port.mk>
