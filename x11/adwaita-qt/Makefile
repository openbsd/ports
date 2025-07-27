COMMENT =	GNOME Shell style for Qt applications

GH_ACCOUNT =	FedoraQt
GH_PROJECT =	adwaita-qt
GH_TAGNAME =	1.4.2

CATEGORIES =	x11

SHARED_LIBS +=  adwaitaqt     0.0 # 1.2
SHARED_LIBS +=  adwaitaqtpriv 0.0 # 1.2

SHARED_LIBS +=	adwaitaqt6                0.0 # 0.0
SHARED_LIBS +=	adwaitaqt6priv            0.0 # 0.0

# GPLv2 only
PERMIT_PACKAGE =	Yes

FLAVORS =	qt6
FLAVOR ?=

MODULES =		devel/cmake

BUILD_DEPENDS =		www/sassc

.if ${FLAVOR:Mqt6}
FULLPKGNAME=	adwaita-qt6-${GH_TAGNAME}

MODULES +=	x11/qt6

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6DBus Qt6Gui Qt6Widgets
WANTLIB += m

CONFIGURE_ARGS =	-DUSE_QT6=ON
CONFIGURE_ENV =		QT_DIR=${LOCALBASE}/lib/qt6/cmake/Qt6/
.else
WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Widgets
WANTLIB += Qt5X11Extras m xcb

MODULES +=	x11/qt5

LIB_DEPENDS =		x11/qt5/qtx11extras

CONFIGURE_ARGS =	-DUSE_QT6=OFF
CONFIGURE_ENV =		QT_DIR=${LOCALBASE}/lib/qt5/cmake/Qt5/
.endif


.include <bsd.port.mk>
