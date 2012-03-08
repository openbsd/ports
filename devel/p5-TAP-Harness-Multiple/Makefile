# $OpenBSD: Makefile,v 1.1.1.1 2012/03/08 14:53:26 pascal Exp $

COMMENT =	report TAP output by test file description

MODULES =	cpan
DISTNAME =	TAP-Harness-Multiple-0.07
CATEGORIES =	devel

MAINTAINER =	Pascal Stumpf <Pascal.Stumpf@cubes.de>

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-TAP-Harness-Archive
REGRESS_DEPENDS =	devel/p5-IO-CaptureOutput

.include <bsd.port.mk>
