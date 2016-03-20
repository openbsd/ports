# $OpenBSD: Makefile,v 1.5 2016/03/20 19:56:17 naddy Exp $

COMMENT =	implement some of Autoconf macros in pure Perl

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Config-AutoConf-0.311
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		sysutils/p5-Capture-Tiny
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
