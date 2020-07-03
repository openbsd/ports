# $OpenBSD: Makefile,v 1.14 2020/07/03 21:45:01 sthen Exp $

COMMENT =		template based module starter for CGI apps

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Module-Starter-Plugin-CGIApp-0.30
REVISION =		4
CATEGORIES =		devel
CPAN_AUTHOR =		JALDHAR

# Perl
PERMIT_PACKAGE =	Yes

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =		www/p5-HTML-Template \
			devel/p5-Module-Starter
TEST_DEPENDS =	devel/p5-File-Copy-Recursive \
			devel/p5-File-DirCompare \
			devel/p5-Test-MockTime
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
