UNLINKED = kf6
COMMENT =	framework to create integrate services and actions
DISTNAME =	purpose-${VERSION}

SHARED_LIBS +=  KF6Purpose                0.0 # 0.0
SHARED_LIBS +=  KF6PurposeWidgets         0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Completion KF6ConfigCore KF6CoreAddons
WANTLIB += KF6I18n KF6JobWidgets KF6KIOCore KF6KIOGui KF6KIOWidgets
WANTLIB += KF6Notifications KF6Service KF6Solid KF6WidgetsAddons
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6Qml Qt6Widgets
WANTLIB += Qt6Xml accounts-qt6 c kaccounts6 m

# Special case, KAccounts depends on intltool-merge
MODULES +=	textproc/intltool

BUILD_DEPENDS =	devel/gettext,-tools \
		textproc/intltool \
		devel/kf6/kirigami>=${MODKF6_VERSION} \

RUN_DEPENDS =	devel/kf6/kirigami>=${MODKF6_VERSION} \
		x11/gtk+4,-guic

LIB_DEPENDS =	devel/kf6/kcompletion>=${MODKF6_VERSION} \
		devel/kf6/kconfig>=${MODKF6_VERSION} \
		devel/kf6/kcoreaddons>=${MODKF6_VERSION} \
		devel/kf6/ki18n>=${MODKF6_VERSION} \
		devel/kf6/kio>=${MODKF6_VERSION} \
		devel/kf6/kjobwidgets>=${MODKF6_VERSION} \
		devel/kf6/knotifications>=${MODKF6_VERSION} \
		devel/kf6/kservice>=${MODKF6_VERSION} \
		devel/kf6/kwidgetsaddons>=${MODKF6_VERSION} \
		devel/kf6/solid>=${MODKF6_VERSION} \
		x11/qt6/qtdeclarative

LIB_DEPENDS +=	net/libaccounts-qt,qt6 \
		x11/kde-applications/kf6-kaccounts-integration

# sucks
TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
