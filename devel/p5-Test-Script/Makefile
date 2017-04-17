# $OpenBSD: Makefile,v 1.15 2017/04/17 14:40:01 bluhm Exp $

COMMENT =	cross-platform basic tests for scripts

DISTNAME =	Test-Script-1.18

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
RUN_DEPENDS =		devel/p5-IPC-Run3>=0.034 \
			devel/p5-Probe-Perl>=0.01
TEST_DEPENDS =		devel/p5-Test-Tester

PKG_ARCH =		*

.include <bsd.port.mk>
