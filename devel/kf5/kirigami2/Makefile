# $OpenBSD: Makefile,v 1.2 2018/01/14 13:42:33 rsadowski Exp $

COMMENT =	QtQuick based components set
DISTNAME =	kirigami2-${VERSION}
PKGNAME =	kf5-${DISTNAME}

SHARED_LIBS +=  KF5Kirigami2              0.0 # 5.41

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5Quick Qt5QuickControls2 m

BUILD_DEPENDS =	devel/gettext-tools \
		devel/kf5/plasma-framework \
		x11/qt5/qtquickcontrols2 \
		x11/qt5/qtdeclarative

RUN_DEPENDS =	devel/kf5/plasma-framework \
		x11/qt5/qtquickcontrols2 \
		x11/qt5/qtdeclarative

PORTHOME =	${WRKDIR}

.include <bsd.port.mk>
