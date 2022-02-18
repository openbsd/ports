# $OpenBSD: Makefile,v 1.10 2022/02/18 09:49:54 rsadowski Exp $

COMMENT =	desktop sharing
DISTNAME =	krfb-${VERSION}
CATEGORIES =	net x11

SHARED_LIBS +=  krfbprivate               2.1 # 5.0

HOMEPAGE =	https://kde.org/applications/internet/org.kde.krfb

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5DBusAddons
WANTLIB += KF5DNSSD KF5I18n KF5Notifications KF5Wallet KF5WidgetsAddons
WANTLIB += KF5WindowSystem KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Widgets Qt5X11Extras Qt5Xml X11 Xdamage Xext Xtst
WANTLIB += c m vncserver xcb xcb-damage xcb-image xcb-render xcb-shape
WANTLIB += xcb-shm xcb-xfixes

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
		x11/qt5/qtx11extras

CONFIGURE_ARGS +=	-DCMAKE_C_FLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
			-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS} -L${X11BASE}/lib -L${LOCALBASE}/lib"

.include <bsd.port.mk>
