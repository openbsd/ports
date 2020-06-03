# $OpenBSD: Makefile,v 1.3 2020/06/03 05:13:42 rsadowski Exp $

COMMENT =	VNC and RDP  desktop client
DISTNAME =	krdc-${VERSION}
CATEGORIES =	net x11
REVISION =	0

SHARED_LIBS +=  krdccore               1.0 # 5.0

HOMEPAGE =	https://kde.org/applications/internet/org.kde.krdc

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Bookmarks
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5DNSSD KF5I18n KF5IconThemes
WANTLIB += KF5KCMUtils KF5Notifications KF5NotifyConfig KF5Service
WANTLIB += KF5Wallet KF5WidgetsAddons KF5XmlGui Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Widgets Qt5Xml c m ssh vncclient

MODULES +=	x11/kde-applications

MODKDE5_DESKTOP_FILE = yes
MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DOCS = yes

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kbookmarks \
		devel/kf5/kcmutils \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kdnssd \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/knotifications \
		devel/kf5/knotifyconfig \
		devel/kf5/kservice \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		net/libvncserver \
		security/libssh

.include <bsd.port.mk>
