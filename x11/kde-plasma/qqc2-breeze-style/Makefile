COMMENT =	Breeze QQC2 Style
DISTNAME =	qqc2-breeze-style-${VERSION}

MODKDE5_TRANSLATIONS = Yes
MODKDE5_ICON_CACHE = Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5GuiAddons
WANTLIB += KF5IconThemes KF5Kirigami2 KF5WidgetsAddons Qt5Core
WANTLIB += Qt5DBus Qt5Gui Qt5Network Qt5Qml Qt5QmlModels Qt5Quick
WANTLIB += Qt5QuickControls2 Qt5QuickTemplates2 Qt5Widgets Qt5Xml m

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kguiaddons \
		devel/kf5/kiconthemes \
		devel/kf5/kirigami2 \
		devel/kf5/kwidgetsaddons \
		x11/qt5/qtdeclarative \
		x11/qt5/qtquickcontrols2

.include <bsd.port.mk>
