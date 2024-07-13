COMMENT =	KDE digital camera support

DISTNAME =	kamera-${VERSION}

CATEGORIES =	x11 graphics

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6I18n
WANTLIB += KF6KCMUtils KF6KCMUtilsCore KF6KCMUtilsQuick KF6KIOCore
WANTLIB += KF6WidgetsAddons KF6XmlGui Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6Qml Qt6Widgets Qt6Xml gphoto2 gphoto2_port m

MODKDE_TRANSLATIONS = yes
MODKDE_DESKTOP_FILE = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes

# XXX fix with new libgphoto2; revisit at next update
CXXFLAGS +=	-I${LOCALBASE}/include -DHAVE_GPHOTO2_5

LIB_DEPENDS =	devel/kf6/kcmutils \
		devel/kf6/kcolorscheme \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		graphics/libgphoto2 \
		x11/qt6/qtdeclarative

.include <bsd.port.mk>
