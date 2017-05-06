# $OpenBSD: Makefile,v 1.6 2017/05/06 15:35:35 benoit Exp $

COMMENT =	implement some of Autoconf macros in pure Perl

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Config-AutoConf-0.314
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		sysutils/p5-Capture-Tiny
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
