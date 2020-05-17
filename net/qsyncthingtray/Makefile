# $OpenBSD: Makefile,v 1.9 2020/05/17 16:26:02 rsadowski Exp $

COMMENT =	system tray app for Syncthing

GH_ACCOUNT =	sieren
GH_PROJECT =	QSyncthingTray
GH_TAGNAME =	0.5.8
PKGNAME =	qsyncthingtray-${GH_TAGNAME}
REVISION =	1

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

CONFIGURE_ARGS +=	-DQST_BUILD_WEBKIT=1

# Uses webkit functionality from Qt5
USE_WXNEEDED =	Yes

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/QSyncthingTray ${PREFIX}/bin

.include <bsd.port.mk>
