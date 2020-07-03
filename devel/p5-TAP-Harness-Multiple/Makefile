# $OpenBSD: Makefile,v 1.6 2020/07/03 21:45:10 sthen Exp $

COMMENT =	report TAP output by test file description

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	TAP-Harness-Multiple-0.07
CATEGORIES =	devel
REVISION =	1

MAINTAINER =	Pascal Stumpf <pascal@stumpf.co>

# Perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-TAP-Harness-Archive
TEST_DEPENDS =	devel/p5-IO-CaptureOutput

.include <bsd.port.mk>
