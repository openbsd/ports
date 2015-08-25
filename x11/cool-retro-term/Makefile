# $OpenBSD: Makefile,v 1.6 2015/08/25 13:18:28 sthen Exp $

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

MODULES =	gcc4 \
		x11/qt5
MODGCC4_ARCHS =	*
MODGCC4_LANGS =	c++

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

MAKE_FLAGS =	CXX="${CXX}" CXXFLAGS="${CXXFLAGS} -fPIC"

FAKE_FLAGS =	INSTALL_ROOT="${DESTDIR}"

NO_TEST =	Yes

do-configure:
	${SUBST_CMD} ${WRKSRC}/{app/app,cool-retro-term}.pro
	cd ${WRKSRC} && qmake-qt5

.include <bsd.port.mk>
