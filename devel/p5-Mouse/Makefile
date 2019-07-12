# $OpenBSD: Makefile,v 1.17 2019/07/12 20:45:02 sthen Exp $

COMMENT =	Moose minus the antlers

MODULES =	cpan
DISTNAME =	Mouse-v2.5.6
PKGNAME =	p5-${DISTNAME:S/-v/-/}
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =		Yes

WANTLIB += c perl

CONFIGURE_STYLE = modbuild

CPAN_AUTHOR =	SKAJI

BUILD_DEPENDS =	devel/p5-Module-Build-XSUtil
TEST_DEPENDS =	devel/p5-Declare-Constraints-Simple \
		devel/p5-IO-String \
		devel/p5-Locale-US \
		devel/p5-Params-Coerce \
		devel/p5-Path-Class \
		devel/p5-Test-Deep \
		devel/p5-Test-Exception \
		devel/p5-Test-Fatal \
		devel/p5-Test-LeakTrace \
		devel/p5-Test-Output \
		devel/p5-Test-Requires \
		textproc/p5-Regexp-Common \
		www/p5-libwww

.include <bsd.port.mk>


