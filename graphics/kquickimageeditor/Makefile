COMMENT =	KDE image editing components

DISTNAME =	kquickimageeditor-0.6.0

SHARED_LIBS +=	KQuickImageEditor         0.0 # 0.0

CATEGORIES =	graphics x11

SITES =  	${SITE_KDE:=stable/kquickimageeditor/}
EXTRACT_SUFX =	.tar.xz

HOMEPAGE =	https://invent.kde.org/libraries/kquickimageeditor/

# GPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6ConfigCore KF6ConfigGui Qt6Core
WANTLIB += Qt6Gui Qt6Network Qt6OpenGL Qt6Qml Qt6Quick m

MODULES =	devel/kf6

LIB_DEPENDS =	devel/kf6/kconfig \
		x11/qt6/qtdeclarative

CONFIGURE_ARGS =	-DQT_MAJOR_VERSION=6

.include <bsd.port.mk>
