COMMENT =	KDE interactive physics simulator
DISTNAME =	step-${VERSION}
CATEGORIES =	education math
REVISION =	0

HOMEPAGE =	https://www.kde.org/applications/education/step

WANTLIB += ${COMPILER_LIBCXX} GL KF6Attica KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6Crash KF6GuiAddons KF6I18n KF6IconThemes KF6JobWidgets
WANTLIB += KF6KIOCore KF6KIOGui KF6KIOWidgets KF6NewStuffCore
WANTLIB += KF6NewStuffWidgets KF6Plotting KF6Service KF6SonnetUi
WANTLIB += KF6TextWidgets KF6WidgetsAddons KF6XmlGui Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6OpenGL Qt6OpenGLWidgets Qt6Widgets
WANTLIB += Qt6Xml c gsl gslcblas m qalculate

MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DESKTOP_FILE = yes
MODKDE_DOCS = yes

BUILD_DEPENDS =	math/eigen3

RUN_DEPENDS =	misc/shared-mime-info

LIB_DEPENDS =	devel/gsl \
		devel/kf6/attica \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kjobwidgets \
		devel/kf6/knewstuff \
		devel/kf6/kplotting \
		devel/kf6/kservice \
		devel/kf6/kguiaddons \
		devel/kf6/ktextwidgets \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/kf6/sonnet \
		math/libqalculate

.include <bsd.port.mk>
