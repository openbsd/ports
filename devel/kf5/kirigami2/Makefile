# $OpenBSD: Makefile,v 1.7 2018/06/04 20:25:32 rsadowski Exp $

COMMENT =	QtQuick based components set
DISTNAME =	kirigami2-${VERSION}
PKGNAME =	kf5-${DISTNAME}
REVISION =	0

SHARED_LIBS +=  KF5Kirigami2              1.1 # 5.41

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5Quick Qt5QuickControls2 m

BUILD_DEPENDS =	devel/gettext-tools \
		x11/qt5/qtquickcontrols2 \
		x11/qt5/qtsvg \
		x11/qt5/qtdeclarative

RUN_DEPENDS =	x11/qt5/qtquickcontrols2 \
		x11/qt5/qtsvg \
		x11/qt5/qtdeclarative

PORTHOME =	${WRKDIR}

.include <bsd.port.mk>
