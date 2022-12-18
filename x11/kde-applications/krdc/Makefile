COMMENT =	VNC and RDP  desktop client
DISTNAME =	krdc-${VERSION}
CATEGORIES =	net x11

SHARED_LIBS +=  krdccore               2.1 # 5.0

HOMEPAGE =	https://kde.org/applications/internet/org.kde.krdc

WANTLIB += ${COMPILER_LIBCXX} KF5Activities KF5Auth KF5AuthCore
WANTLIB += KF5Bookmarks KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5DNSSD
WANTLIB += KF5I18n KF5IconThemes KF5KCMUtils KF5Notifications
WANTLIB += KF5NotifyConfig KF5Service KF5Wallet KF5WidgetsAddons
WANTLIB += KF5WindowSystem KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Widgets Qt5Xml X11 c m ssh vncclient

MODKDE5_DESKTOP_FILE = yes
MODKDE5_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DOCS = yes

BUILD_DEPENDS =	x11/freerdp
RUN_DEPENDS =	x11/freerdp

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
		devel/kf5/kactivities \
		net/libvncserver \
		security/libssh

.include <bsd.port.mk>
