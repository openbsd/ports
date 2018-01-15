# $OpenBSD: Makefile,v 1.3 2018/01/15 08:07:44 ajacoutot Exp $

COMMENT =	QtQuick based components set
DISTNAME =	kirigami2-${VERSION}
PKGNAME =	kf5-${DISTNAME}
REVISION =	0

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
