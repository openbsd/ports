COMMENT =	KDE image editing components

DISTNAME =	kquickimageeditor-0.7.0.1

SHARED_LIBS +=	KQuickImageEditor         0.1 # 0.0

CATEGORIES =	graphics x11

SITES =  	${SITE_KDE:=stable/kquickimageeditor/}
EXTRACT_SUFX =	.tar.xz

HOMEPAGE =	https://invent.kde.org/libraries/kquickimageeditor/

# GPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6ConfigCore KF6ConfigGui Qt6Concurrent
WANTLIB += Qt6Core Qt6Gui Qt6Network Qt6OpenGL Qt6Qml Qt6Quick
WANTLIB += hwy m

MODULES =	devel/kf6

BUILD_DEPENDS =	graphics/opencv

LIB_DEPENDS =	devel/kf6/kconfig \
		devel/highway \
		x11/qt6/qtdeclarative

CONFIGURE_ARGS =	-DQT_MAJOR_VERSION=6

.include <bsd.port.mk>
