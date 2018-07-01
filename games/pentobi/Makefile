# $OpenBSD: Makefile,v 1.11 2018/07/01 18:33:36 espie Exp $

COMMENT =	free clone of Blokus board game
DISTNAME =	pentobi-14.1
EXTRACT_SUFX =	.tar.xz
CATEGORIES =	games x11
REVISION =	2

HOMEPAGE =	http://pentobi.sourceforge.net/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += Qt5Concurrent Qt5Core Qt5Gui Qt5Widgets c m pthread
WANTLIB += ${COMPILER_LIBCXX}

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=pentobi/}

# C++14
COMPILER =	base-clang ports-clang ports-gcc

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

NO_TEST =	Yes

.include <bsd.port.mk>
