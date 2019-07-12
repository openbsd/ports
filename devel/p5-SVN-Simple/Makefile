# $OpenBSD: Makefile,v 1.16 2019/07/12 20:45:05 sthen Exp $

COMMENT =	simple interface to subversion's editor interface#'

DISTNAME =	SVN-Simple-0.28
CATEGORIES =	devel

CPAN_AUTHOR =	CLKAO
MODULES =	cpan
PKG_ARCH =	*

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/subversion,-perl>=1.1.1
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
