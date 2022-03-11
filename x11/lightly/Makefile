COMMENT =	modern style for Qt applications

GH_ACCOUNT =	Luwx
GH_PROJECT =	Lightly
GH_TAGNAME =	v0.4.1

PKGNAME =	${DISTNAME:L}
REVISION =	1

SHARED_LIBS =	lightlycommon5	0.0 # 0.4.1

CATEGORIES =	x11

# GPL v2 only
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5GuiAddons
WANTLIB += KF5I18n KF5IconThemes KF5KCMUtils KF5Service KF5Style
WANTLIB += KF5WaylandClient KF5WidgetsAddons KF5WindowSystem Qt5Core
WANTLIB += Qt5DBus Qt5Gui Qt5Network Qt5Qml Qt5QmlModels Qt5Quick
WANTLIB += Qt5Widgets Qt5X11Extras Qt5Xml X11 c kdecorations2
WANTLIB += m xcb

MODULES =		devel/kf5
EXTRACT_SUFX =		.tar.gz

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/kf5/kpackage

RUN_DEPENDS =		x11/gtk+3,-guic \
			devel/kf5/kpackage \
			devel/kf5/breeze-icons

LIB_DEPENDS =		devel/kf5/frameworkintegration \
			devel/kf5/kauth \
			devel/kf5/kcmutils \
			devel/kf5/kconfigwidgets \
			devel/kf5/kcoreaddons \
			devel/kf5/kguiaddons \
			devel/kf5/ki18n \
			devel/kf5/kservice \
			devel/kf5/kwindowsystem \
			devel/kf5/kwayland \
			x11/kde-plasma/kdecoration \
			x11/qt5/qtdeclarative \
			x11/qt5/qtx11extras

.include <bsd.port.mk>
