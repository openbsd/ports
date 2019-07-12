# $OpenBSD: Makefile,v 1.16 2019/07/12 20:44:54 sthen Exp $

COMMENT =		handle .desktop files

DISTNAME =		File-DesktopEntry-0.22
REVISION =		0
CATEGORIES =		devel 

# perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		devel/p5-File-BaseDir>=0.03 \
			www/p5-URI
BUILD_DEPENDS =		${RUN_DEPENDS}

MODULES =		cpan
PKG_ARCH =		*
CPAN_AUTHOR =		MICHIELB

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
