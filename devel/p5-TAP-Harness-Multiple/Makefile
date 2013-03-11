# $OpenBSD: Makefile,v 1.2 2013/03/11 10:50:22 espie Exp $

COMMENT =	report TAP output by test file description

MODULES =	cpan
DISTNAME =	TAP-Harness-Multiple-0.07
CATEGORIES =	devel

MAINTAINER =	Pascal Stumpf <Pascal.Stumpf@cubes.de>

# Perl
PERMIT_PACKAGE_CDROM=   Yes

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-TAP-Harness-Archive
TEST_DEPENDS =	devel/p5-IO-CaptureOutput

.include <bsd.port.mk>
