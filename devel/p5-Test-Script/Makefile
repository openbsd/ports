# $OpenBSD: Makefile,v 1.19 2020/01/01 22:12:05 bluhm Exp $

COMMENT =	cross-platform basic tests for scripts

DISTNAME =	Test-Script-1.26

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
RUN_DEPENDS =		devel/p5-Probe-Perl>=0.01 \
			sysutils/p5-Capture-Tiny
TEST_DEPENDS =		devel/p5-Test2-Suite>=0.000060

PKG_ARCH =		*

.include <bsd.port.mk>
