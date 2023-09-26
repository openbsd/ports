COMMENT =	KDE image editing components

DISTNAME =	kquickimageeditor-0.2.0

CATEGORIES =	graphics x11

SITES =  	${SITE_KDE:=stable/kquickimageeditor/}

HOMEPAGE =	https://invent.kde.org/libraries/kquickimageeditor/

# GPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5QmlModels Qt5Quick m

MODULES =	devel/kf5

LIB_DEPENDS =	x11/qt5/qtdeclarative

.include <bsd.port.mk>
