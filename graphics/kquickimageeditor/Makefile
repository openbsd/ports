COMMENT =	KDE image editing components
VERSION =	0.1.3
DISTNAME =	kquickimageeditor-${VERSION}

CATEGORIES =	graphics x11

MASTER_SITES =  ${MASTER_SITE_KDE:=stable/kquickimageeditor/0.1/}

HOMEPAGE =	https://invent.kde.org/libraries/kquickimageeditor/

# GPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5QmlModels Qt5Quick m

MODULES =	devel/kf5

LIB_DEPENDS =	x11/qt5/qtdeclarative

.include <bsd.port.mk>
