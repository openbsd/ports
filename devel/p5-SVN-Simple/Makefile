# $OpenBSD: Makefile,v 1.17 2020/07/03 21:45:08 sthen Exp $

COMMENT =	simple interface to subversion's editor interface#'

DISTNAME =	SVN-Simple-0.28
CATEGORIES =	devel
REVISION =	0

CPAN_AUTHOR =	CLKAO
MODULES =	cpan
PKG_ARCH =	*

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/subversion,-perl>=1.1.1
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
