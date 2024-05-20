COMMENT =	KDE PIM kontact plugin interface library
DISTNAME =	kontactinterface-${VERSION}
CATEGORIES =	devel mail

SHARED_LIBS +=	KPim6KontactInterface     0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6I18n
WANTLIB += KF6KIOCore KF6KIOGui KF6Parts KF6Service KF6WidgetsAddons
WANTLIB += KF6WindowSystem KF6XmlGui Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6Widgets Qt6Xml X11 m xkbcommon

MODKDE5_TRANSLATIONS = yes

LIB_DEPENDS =	devel/kf6/kcolorscheme \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kparts \
		devel/kf6/kservice \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		x11/xkbcommon

.include <bsd.port.mk>
