# $OpenBSD:

COMMENT =	KDE versatile math calculator
DISTNAME =	kcalc-${VERSION}
CATEGORIES =	x11 math
REVISION =	0


WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5GuiAddons
WANTLIB += KF5I18n KF5Notifications KF5WidgetsAddons KF5XmlGui
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Widgets Qt5Xml c gmp m

MODKDE5_DESKTOP_FILE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODULES +=	x11/kde-applications

BUILD_DEPENDS +=devel/kf5/kinit
RUN_DEPENDS +=	devel/kf5/kinit

LIB_DEPENDS +=	devel/gmp \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kguiaddons \
		devel/kf5/kguiaddons \
		devel/kf5/ki18n \
		devel/kf5/knotifications \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui

.include <bsd.port.mk>
