# $OpenBSD: Makefile,v 1.10 2015/07/18 21:14:07 jasper Exp $

COMMENT =		template based module starter for CGI apps

MODULES =		cpan
DISTNAME =		Module-Starter-Plugin-CGIApp-0.30
REVISION =		2
CATEGORIES =		devel
CPAN_AUTHOR =		JALDHAR

MAINTAINER =		James Wright <jamesw@bsdhosting.co.za>

# Perl
PERMIT_PACKAGE_CDROM =   Yes

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =		www/p5-HTML-Template \
			devel/p5-Module-Starter
TEST_DEPENDS =	devel/p5-File-Copy-Recursive \
			devel/p5-File-DirCompare \
			devel/p5-Test-MockTime
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
