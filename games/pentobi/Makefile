# $OpenBSD: Makefile,v 1.6 2017/07/27 09:55:44 sthen Exp $

COMMENT =	free clone of Blokus board game
DISTNAME =	pentobi-10.1
EXTRACT_SUFX =	.tar.xz
CATEGORIES =	games x11
REVISION =	2

HOMEPAGE =	http://pentobi.sourceforge.net/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += Qt5Concurrent Qt5Core Qt5Gui Qt5Widgets X11 c m pthread
WANTLIB += ${COMPILER_LIBCXX}

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=pentobi/}

MODULES =	devel/cmake \
		x11/qt5

BUILD_DEPENDS =	x11/qt5/qtdeclarative \
		x11/qt5/qtsvg \
		x11/qt5/qttools

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic \
		x11/qt5/qtdeclarative \
		x11/qt5/qtsvg \
		x11/qt5/qttools

CONFIGURE_ARGS =	-DUSE_QT5=1

NO_TEST =	Yes

.include <bsd.port.mk>
