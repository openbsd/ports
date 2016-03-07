# $OpenBSD: Makefile,v 1.7 2016/03/07 10:18:24 zhuk Exp $

COMMENT =	good looking terminal emulator which mimics old CRT displays
DISTNAME =	cool-retro-term-1.0.0
CATEGORIES =	x11
REVISION =	4

HOMEPAGE =	https://github.com/Swordfish90/cool-retro-term

# GPLv3 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL Qt5Core Qt5Gui Qt5Network Qt5Qml Qt5Quick Qt5Sql
WANTLIB += Qt5Widgets c m pthread

MASTER_SITES =	http://mirrors.nycbug.org/pub/distfiles/

MODULES =		x11/qt5
CONFIGURE_STYLE =	qmake5

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

MAKE_FLAGS =	CXX="${CXX}" CXXFLAGS="${CXXFLAGS} -fPIC"

NO_TEST =	Yes

pre-configure:
	 ${SUBST_CMD} ${WRKSRC}/{app/app,cool-retro-term}.pro

.include <bsd.port.mk>
