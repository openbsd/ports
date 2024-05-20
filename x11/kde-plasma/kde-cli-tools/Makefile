COMMENT =	KDE krameworks 5 tools

DISTNAME =	kde-cli-tools-${VERSION}

MODKDE5_TRANSLATIONS = Yes
MODKDE5_DOCS = Yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6I18n KF6IconThemes KF6IconWidgets KF6JobWidgets
WANTLIB += KF6KCMUtils KF6KCMUtilsCore KF6KCMUtilsQuick KF6KIOCore
WANTLIB += KF6KIOGui KF6KIOWidgets KF6Parts KF6Pty KF6Service
WANTLIB += KF6Solid KF6Su KF6WidgetsAddons KF6WindowSystem KF6XmlGui
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6Qml Qt6Svg Qt6Widgets
WANTLIB += Qt6Xml X11 c m xkbcommon

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	devel/kf6/kcmutils \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kdesu \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kjobwidgets \
		devel/kf6/kparts \
		devel/kf6/kpty \
		devel/kf6/kservice \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		x11/qt6/qtdeclarative \
		x11/qt6/qtsvg \
		x11/xkbcommon

.include <bsd.port.mk>
