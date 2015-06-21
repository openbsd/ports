# $OpenBSD: Makefile,v 1.12 2015/06/21 09:14:34 benoit Exp $

COMMENT =		handle .desktop files

DISTNAME =		File-DesktopEntry-0.12
CATEGORIES =		devel 

# perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		devel/p5-File-BaseDir>=0.03
BUILD_DEPENDS =		${RUN_DEPENDS}

MODULES =		cpan
CPAN_AUTHOR =		MICHIELB

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
