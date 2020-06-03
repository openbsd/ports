# $OpenBSD:

USE_WXNEEDED =	Yes

COMMENT =	scientific calculator for KDE
DISTNAME =	kalgebra-${VERSION}
CATEGORIES =	education
REVISION =	1

WANTLIB += ${COMPILER_LIBCXX} Analitza AnalitzaGui AnalitzaPlot
WANTLIB += AnalitzaWidgets KF5Auth KF5AuthCore KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5I18n
WANTLIB += KF5KIOCore KF5Service KF5WidgetsAddons KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Positioning Qt5PrintSupport
WANTLIB += Qt5Qml Qt5Quick Qt5WebChannel Qt5WebEngineCore Qt5WebEngineWidgets
WANTLIB += Qt5Widgets Qt5Xml c curses ereadline form m

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DOCS = yes

MODULES +=	x11/kde-applications

BUILD_DEPENDS =	devel/kf5/kio \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kconfigwidgets \
		devel/kf5/kirigami2 \
		x11/qt5/qtgraphicaleffects

RUN_DEPENDS =	misc/shared-mime-info \
		devel/kf5/kio \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kconfigwidgets \
		devel/kf5/kirigami2 \
		x11/qt5/qtgraphicaleffects

LIB_DEPENDS =	devel/readline \
		devel/kf5/ki18n \
		devel/kf5/kcoreaddons \
		x11/kde-applications/analitza \
		x11/qt5/qtwebengine

CONFIGURE_ARGS +=	-DREADLINE_INCLUDE_DIR=${LOCALBASE}/include/ereadline \
			-DREADLINE_LIBRARY=ereadline \
			-DCURSES_LIBRARIES=ncurses

.include <bsd.port.mk>
