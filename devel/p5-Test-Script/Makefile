# $OpenBSD: Makefile,v 1.17 2019/04/19 15:03:41 bluhm Exp $

COMMENT =	cross-platform basic tests for scripts

DISTNAME =	Test-Script-1.25

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
RUN_DEPENDS =		devel/p5-Probe-Perl>=0.01 \
			sysutils/p5-Capture-Tiny
TEST_DEPENDS =		devel/p5-Test2-Suite>=0.000060

PKG_ARCH =		*

.include <bsd.port.mk>
