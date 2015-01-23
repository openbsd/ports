# $OpenBSD: Makefile,v 1.3 2015/01/23 07:52:08 benoit Exp $

COMMENT =	implement some of Autoconf macros in pure Perl

MODULES =	cpan
DISTNAME =	Config-AutoConf-0.309
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		sysutils/p5-Capture-Tiny
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
