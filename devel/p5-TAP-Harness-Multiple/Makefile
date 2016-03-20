# $OpenBSD: Makefile,v 1.3 2016/03/20 19:56:35 naddy Exp $

COMMENT =	report TAP output by test file description

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	TAP-Harness-Multiple-0.07
CATEGORIES =	devel

MAINTAINER =	Pascal Stumpf <Pascal.Stumpf@cubes.de>

# Perl
PERMIT_PACKAGE_CDROM=   Yes

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-TAP-Harness-Archive
TEST_DEPENDS =	devel/p5-IO-CaptureOutput

.include <bsd.port.mk>
