# $OpenBSD: Makefile,v 1.1.1.1 2017/10/26 08:05:56 rsadowski Exp $

COMMENT =	QtQuick based components set
DISTNAME =	kirigami2-${VERSION}
PKGNAME =	kf5-${DISTNAME}

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5Quick m

BUILD_DEPENDS =	devel/gettext-tools \
		devel/kf5/plasma-framework \
		x11/qt5/qtquickcontrols2 \
		x11/qt5/qtdeclarative

RUN_DEPENDS =	devel/kf5/plasma-framework \
		x11/qt5/qtquickcontrols2 \
		x11/qt5/qtdeclarative

PORTHOME =	${WRKDIR}

.include <bsd.port.mk>
