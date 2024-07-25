COMMENT =	KDE pim identities
DISTNAME =	kidentitymanagement-${VERSION}
CATEGORIES =	devel mail

SHARED_LIBS +=	KPim6IdentityManagementCore 0.0 # 0.0
SHARED_LIBS +=	KPim6IdentityManagementQuick 0.0 # 0.0
SHARED_LIBS +=	KPim6IdentityManagementWidgets 0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Codecs KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6I18n KF6JobWidgets KF6KIOCore KF6KIOGui KF6KIOWidgets
WANTLIB += KF6Service KF6Solid KF6TextCustomEditor KF6WidgetsAddons
WANTLIB += KF6XmlGui KPim6TextEdit Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6OpenGL Qt6Qml Qt6QmlModels Qt6Quick Qt6Widgets Qt6Xml
WANTLIB += m

MODKDE_TRANSLATIONS = yes

BUILD_DEPENDS =	graphics/kirigami-addons

LIB_DEPENDS =	devel/kf6/kcodecs \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kjobwidgets \
		devel/kf6/kservice \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		textproc/ktextaddons \
		x11/kde-applications/kpimtextedit>=${MODKDE_GEAR_VERSION} \
		x11/qt6/qtdeclarative

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
