# $OpenBSD $

USE_WXNEEDED =	Yes
COMMENT =	scientific calculator for KDE
DISTNAME =	kalgebra-${VERSION}
CATEGORIES =	education
REVISION =	1

KDE5 =		Yes

WANTLIB += ${COMPILER_LIBCXX} Analitza AnalitzaGui AnalitzaPlot
WANTLIB += KF5I18n Qt5Core Qt5Gui Qt5Network Qt5PrintSupport Qt5Qml
WANTLIB += Qt5Quick Qt5Widgets Qt5Xml c curses ereadline form
WANTLIB += m

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kdoctools \
		devel/kf5/kio \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kconfigwidgets \
		devel/kf5/kirigami2 \
		x11/qt5/qtgraphicaleffects

RUN_DEPENDS +=	devel/desktop-file-utils \
		misc/shared-mime-info \
		devel/kf5/kdoctools \
		x11/gtk+3,-guic \
		devel/kf5/kio \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kconfigwidgets \
		devel/kf5/kirigami2 \
		x11/qt5/qtgraphicaleffects

LIB_DEPENDS +=	devel/readline \
		devel/kf5/ki18n \
		x11/kde-applications/analitza

CONFIGURE_ARGS +=	-DREADLINE_INCLUDE_DIR=${LOCALBASE}/include/ereadline \
			-DREADLINE_LIBRARY=ereadline \
			-DCURSES_LIBRARIES=ncurses

.include <bsd.port.mk>
