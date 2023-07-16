COMMENT =	desktop sharing
DISTNAME =	krfb-${VERSION}
CATEGORIES =	net x11

# XXX Depends on KPipeWire (pipewire)
VERSION =	22.12.3
REVISION =	1

SHARED_LIBS +=  krfbprivate               3.0 # 5.0
WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5DBusAddons
WANTLIB += KF5DNSSD KF5I18n KF5Notifications KF5Wallet KF5WidgetsAddons
WANTLIB += KF5WindowSystem KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Widgets Qt5X11Extras Qt5Xml X11 Xdamage Xext Xtst
WANTLIB += c m vncserver xcb xcb-damage xcb-image xcb-render xcb-shape
WANTLIB += xcb-shm xcb-xfixes

WANTLIB += lib/inotify/inotify



HOMEPAGE =	https://kde.org/applications/internet/org.kde.krfb

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DOCS = yes

BUILD_DEPENDS =	devel/kf5/kwayland

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kdnssd \
		devel/kf5/ki18n \
		devel/kf5/knotifications \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		net/libvncserver \
		devel/libinotify \
		x11/qt5/qtx11extras

CXXFLAGS +=	-I${LOCALBASE}/include

.include <bsd.port.mk>
