COMMENT =	KDE plugin framework for user interface components
DISTNAME =	kparts-${VERSION}
REVISION =	0

SHARED_LIBS +=  KF6Parts                  0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6GuiAddons KF6I18n KF6JobWidgets KF6KIOCore KF6KIOGui
WANTLIB += KF6KIOWidgets KF6Service KF6WidgetsAddons KF6XmlGui
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6Widgets Qt6Xml
WANTLIB += m

BUILD_DEPENDS =	devel/gettext,-tools \
		archivers/gtar

LIB_DEPENDS =	devel/kf6/kconfig>=${MODKF6_VERSION} \
		devel/kf6/kcolorscheme>=${MODKF6_VERSION} \
		devel/kf6/kcompletion>=${MODKF6_VERSION} \
		devel/kf6/kconfigwidgets>=${MODKF6_VERSION} \
		devel/kf6/kcoreaddons>=${MODKF6_VERSION} \
		devel/kf6/ki18n>=${MODKF6_VERSION} \
		devel/kf6/kguiaddons>=${MODKF6_VERSION} \
		devel/kf6/kio>=${MODKF6_VERSION} \
		devel/kf6/kjobwidgets>=${MODKF6_VERSION} \
		devel/kf6/kservice>=${MODKF6_VERSION} \
		devel/kf6/kwidgetsaddons>=${MODKF6_VERSION} \
		devel/kf6/kxmlgui>=${MODKF6_VERSION} \
		devel/kf6/solid>=${MODKF6_VERSION}

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

DEBUG_PACKAGES =	${BUILD_PACKAGES}

MODKF6_BUILD_TESTING =	Yes

.include <bsd.port.mk>
