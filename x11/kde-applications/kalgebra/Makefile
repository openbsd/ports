# $OpenBSD:

USE_WXNEEDED =	Yes

COMMENT =	scientific calculator for KDE
DISTNAME =	kalgebra-${VERSION}
CATEGORIES =	education

WANTLIB += ${COMPILER_LIBCXX} Analitza AnalitzaGui AnalitzaPlot
WANTLIB += KF5CoreAddons KF5I18n Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5Quick Qt5Xml c curses ereadline form m

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
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
		x11/kde-applications/analitza

CONFIGURE_ARGS +=	-DREADLINE_INCLUDE_DIR=${LOCALBASE}/include/ereadline \
			-DREADLINE_LIBRARY=ereadline \
			-DCURSES_LIBRARIES=ncurses

.include <bsd.port.mk>
