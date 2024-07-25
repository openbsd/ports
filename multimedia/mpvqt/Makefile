COMMENT =	libmpv wrapper for QtQuick2 and QML

DISTNAME =	mpvqt-1.0.0
REVISION =	0

CATEGORIES =	multimedia

HOMEPAGE =	https://invent.kde.org/libraries/mpvqt

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

SHARED_LIBS +=  MpvQt                     0.0 # 0.0

# usual KDE rules:
# LGPLv2.1+, GPLv2+, GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Qml Qt6QmlModels Qt6Quick m mpv

SITES =		${SITE_KDE:=stable/mpvqt/}
EXTRACT_SUFX =	.tar.xz

MODULES =		devel/cmake \
			x11/qt6

BUILD_DEPENDS =		devel/kf6/extra-cmake-modules \
			x11/qt6/qtquick3d

LIB_DEPENDS =		multimedia/mpv \
			x11/qt6/qtdeclarative

.include <bsd.port.mk>
