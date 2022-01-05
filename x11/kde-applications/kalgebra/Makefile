# $OpenBSD: Makefile,v 1.18 2022/01/05 08:02:53 rsadowski Exp $

USE_WXNEEDED =	Yes

COMMENT =	scientific calculator for KDE
DISTNAME =	kalgebra-${VERSION}
CATEGORIES =	education

WANTLIB += ${COMPILER_LIBCXX} Analitza AnalitzaGui AnalitzaPlot
WANTLIB += AnalitzaWidgets KF5Auth KF5AuthCore KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5I18n
WANTLIB += KF5KIOCore KF5Service KF5WidgetsAddons KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Positioning Qt5PrintSupport
WANTLIB += Qt5Qml Qt5QmlModels Qt5Quick Qt5WebChannel Qt5WebEngineCore
WANTLIB += Qt5WebEngineWidgets Qt5Widgets Qt5Xml c ereadline m

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DOCS = yes

BUILD_DEPENDS =	devel/kf5/kbookmarks \
		devel/kf5/kirigami2 \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/solid \
		x11/qt5/qtgraphicaleffects

RUN_DEPENDS =	devel/kf5/kbookmarks \
		devel/kf5/kirigami2 \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/solid \
		misc/shared-mime-info \
		x11/qt5/qtgraphicaleffects

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets\
		devel/kf5/kcoreaddons \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kio \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		devel/readline \
		x11/kde-applications/analitza \
		x11/qt5/qtdeclarative \
		x11/qt5/qtwebengine


CONFIGURE_ARGS +=	-DREADLINE_INCLUDE_DIR=${LOCALBASE}/include/ereadline \
			-DREADLINE_LIBRARY=ereadline \
			-DCURSES_LIBRARIES=ncurses

.include <bsd.port.mk>
