# $OpenBSD: Makefile,v 1.8 2019/07/12 20:48:47 sthen Exp $

COMMENT =	system tray app for Syncthing

GH_ACCOUNT =	sieren
GH_PROJECT =	QSyncthingTray
GH_TAGNAME =	0.5.8
PKGNAME =	qsyncthingtray-${GH_TAGNAME}
REVISION =	0

CATEGORIES =	net x11
HOMEPAGE =	https://github.com/sieren/QSyncthingTray
MAINTAINER =	Edd Barrett <edd@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =	devel/cmake \
		x11/qt5

WANTLIB += Qt5Core Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5WebKit Qt5WebKitWidgets Qt5Widgets c m pthread
WANTLIB += ${COMPILER_LIBCXX}

LIB_DEPENDS =	x11/qt5/qtwebkit

# The correct way is to set QTDIR env, but it doesn't work on OpenBSD, so we
# have to manually specify pkg-config paths manually.
CONFIGURE_ENV +=	Qt5Widgets_DIR=${LOCALBASE}/lib/qt5/cmake/Qt5Widgets \
			Qt5Network_DIR=${LOCALBASE}/lib/qt5/cmake/Qt5Network

CONFIGURE_ARGS +=	-DQST_BUILD_WEBKIT=1

# Uses webkit functionality from Qt5
USE_WXNEEDED =	Yes

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/QSyncthingTray ${PREFIX}/bin

.include <bsd.port.mk>
