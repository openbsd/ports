# $OpenBSD: Makefile,v 1.14 2017/05/10 11:25:53 benoit Exp $

COMMENT =		handle .desktop files

DISTNAME =		File-DesktopEntry-0.22
CATEGORIES =		devel 

# perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		devel/p5-File-BaseDir>=0.03
BUILD_DEPENDS =		${RUN_DEPENDS}

MODULES =		cpan
PKG_ARCH =		*
CPAN_AUTHOR =		MICHIELB

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
