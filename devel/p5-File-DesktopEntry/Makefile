# $OpenBSD: Makefile,v 1.15 2017/05/24 14:41:36 giovanni Exp $

COMMENT =		handle .desktop files

DISTNAME =		File-DesktopEntry-0.22
REVISION =		0
CATEGORIES =		devel 

# perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		devel/p5-File-BaseDir>=0.03 \
			www/p5-URI
BUILD_DEPENDS =		${RUN_DEPENDS}

MODULES =		cpan
PKG_ARCH =		*
CPAN_AUTHOR =		MICHIELB

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
