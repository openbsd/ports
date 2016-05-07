# $OpenBSD: Makefile,v 1.4 2016/05/07 12:40:56 pascal Exp $

COMMENT =	report TAP output by test file description

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	TAP-Harness-Multiple-0.07
CATEGORIES =	devel
REVISION =	0

MAINTAINER =	Pascal Stumpf <pascal@stumpf.co>

# Perl
PERMIT_PACKAGE_CDROM=   Yes

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-TAP-Harness-Archive
TEST_DEPENDS =	devel/p5-IO-CaptureOutput

.include <bsd.port.mk>
