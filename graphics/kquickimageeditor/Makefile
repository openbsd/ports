COMMENT =	KDE image editing components

DISTNAME =	kquickimageeditor-0.3.0

CATEGORIES =	graphics x11

SITES =  	${SITE_KDE:=stable/kquickimageeditor/}
EXTRACT_SUFX =	.tar.xz

HOMEPAGE =	https://invent.kde.org/libraries/kquickimageeditor/

# GPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Qml Qt6QmlModels Qt6Quick m

MODULES =	devel/kf6

LIB_DEPENDS =	x11/qt6/qtdeclarative

CONFIGURE_ARGS =	-DQT_MAJOR_VERSION=6

.include <bsd.port.mk>
