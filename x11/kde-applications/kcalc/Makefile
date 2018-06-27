# $OpenBSD $

COMMENT =	KDE versatile math calculator
DISTNAME =	kcalc-${VERSION}
CATEGORIES =	x11 math
REVISION =	0

KDE5 =		Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5GuiAddons
WANTLIB += KF5I18n KF5Notifications KF5WidgetsAddons KF5XmlGui
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Widgets Qt5Xml c gmp m

MODULES =	lang/python

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kdoctools \
		devel/kf5/kinit

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/kf5/kdoctools \
		devel/kf5/kinit

LIB_DEPENDS =	devel/kf5/ki18n \
		devel/kf5/kguiaddons \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kxmlgui \
		devel/kf5/knotifications \
		devel/gmp

.include <bsd.port.mk>
