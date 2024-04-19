UNLINKED = kf6
COMMENT =	KDE framework for managing menu and toolbar actions
DISTNAME =	kxmlgui-${VERSION}

SHARED_LIBS +=  KF6XmlGui                 0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6GlobalAccel
WANTLIB += KF6GuiAddons KF6I18n KF6IconThemes KF6IconWidgets KF6ItemViews
WANTLIB += KF6WidgetsAddons Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6PrintSupport Qt6Widgets Qt6Xml m

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/kf6/ktextwidgets>=${MODKF6_VERSION}

TEST_DEPENDS =	devel/kf6/ktextwidgets>=${MODKF6_VERSION}

LIB_DEPENDS =	devel/kf6/kconfig>=${MODKF6_VERSION} \
		devel/kf6/kconfigwidgets>=${MODKF6_VERSION} \
		devel/kf6/kcoreaddons>=${MODKF6_VERSION} \
		devel/kf6/kglobalaccel>=${MODKF6_VERSION} \
		devel/kf6/ki18n>=${MODKF6_VERSION} \
		devel/kf6/kiconthemes>=${MODKF6_VERSION} \
		devel/kf6/kitemviews>=${MODKF6_VERSION} \
		devel/kf6/kwidgetsaddons>=${MODKF6_VERSION}

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
