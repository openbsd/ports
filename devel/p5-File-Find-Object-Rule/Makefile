# $OpenBSD: Makefile,v 1.13 2021/09/09 00:14:13 bluhm Exp $

COMMENT =	alternative interface to File::Find::Object

DISTNAME =	File-Find-Object-Rule-0.0313

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
BUILD_DEPENDS =		devel/p5-Module-Build>=0.28
RUN_DEPENDS =		devel/p5-Class-XSAccessor \
			devel/p5-File-Find-Object \
			devel/p5-Number-Compare \
			textproc/p5-Text-Glob
TEST_DEPENDS =		devel/p5-File-TreeCreate

CONFIGURE_STYLE =	modbuild

PKG_ARCH =		*

.include <bsd.port.mk>
