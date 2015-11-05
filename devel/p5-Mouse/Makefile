# $OpenBSD: Makefile,v 1.14 2015/11/05 19:08:57 jca Exp $

SHARED_ONLY =	Yes

COMMENT =	Moose minus the antlers

MODULES =	cpan
DISTNAME =	Mouse-2.4.2
CATEGORIES =	devel
REVISION =	0

# Perl
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += c

CPAN_AUTHOR =	GFUJI

CONFIGURE_STYLE =	modbuild

BUILD_DEPENDS =	devel/p5-Module-Build-XSUtil
TEST_DEPENDS = devel/p5-Declare-Constraints-Simple \
		  devel/p5-IO-String \
		  devel/p5-Locale-US \
		  devel/p5-Params-Coerce \
		  devel/p5-Path-Class \
		  devel/p5-Test-Deep \
		  devel/p5-Test-LeakTrace \
		  devel/p5-Test-Output \
		  textproc/p5-Regexp-Common \
		  www/p5-libwww

.include <bsd.port.mk>
