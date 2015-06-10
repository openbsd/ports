# $OpenBSD: Makefile,v 1.10 2015/06/10 13:18:47 benoit Exp $

COMMENT =		handle .desktop files

DISTNAME =		File-DesktopEntry-0.10
CATEGORIES =		devel 

# perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		devel/p5-File-BaseDir>=0.03
BUILD_DEPENDS =		${RUN_DEPENDS}

MODULES =		cpan
CPAN_AUTHOR =		MICHIELB

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
