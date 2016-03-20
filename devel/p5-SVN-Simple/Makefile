# $OpenBSD: Makefile,v 1.15 2016/03/20 19:56:33 naddy Exp $

COMMENT =	simple interface to subversion's editor interface#'

DISTNAME =	SVN-Simple-0.28
CATEGORIES =	devel

CPAN_AUTHOR =	CLKAO
MODULES =	cpan
PKG_ARCH =	*

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/subversion,-perl>=1.1.1
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
