# $OpenBSD: Makefile,v 1.12 2015/07/16 23:57:22 ajacoutot Exp $

SHARED_ONLY =	Yes

COMMENT =	Moose minus the antlers

MODULES =	cpan
DISTNAME =	Mouse-0.97
REVISION =	2
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += c

CPAN_AUTHOR =	GFUJI

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
