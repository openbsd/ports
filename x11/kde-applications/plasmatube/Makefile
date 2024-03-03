COMMENT =		YouTube/Invidious player
DISTNAME =		plasmatube-${VERSION}
CATEGORIES =		multimedia net x11

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5ConfigGui KF5CoreAddons
WANTLIB += KF5I18n Qt5Core Qt5Gui Qt5Network Qt5Qml Qt5QmlModels
WANTLIB += Qt5Quick Qt5QuickControls2 Qt5Svg Qt5Widgets Qt5Xml
WANTLIB += c m mpv

MODKDE5_DESKTOP_FILE =	Yes
MODKDE5_ICON_CACHE =	Yes
MODKDE5_TRANSLATIONS =	Yes

BUILD_DEPENDS =		devel/kf5/kirigami2

LIB_DEPENDS =		devel/kf5/kcoreaddons \
			devel/kf5/kconfig \
			devel/kf5/ki18n \
			multimedia/mpv \
			x11/qt5/qtdeclarative \
			x11/qt5/qtquickcontrols2 \
			x11/qt5/qtsvg

MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

.include <bsd.port.mk>
