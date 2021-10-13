# $OpenBSD: Makefile,v 1.14 2021/10/13 15:02:06 rsadowski Exp $

COMMENT =	embedding of scripting into KDE applications
DISTNAME =	kross-${VERSION}

SHARED_LIBS =	KF5KrossCore		6.0
SHARED_LIBS +=	KF5KrossUi		6.0

WANTLIB += ${COMPILER_LIBCXX} GL KF5Auth KF5AuthCore KF5Bookmarks
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5I18n KF5IconThemes
WANTLIB += KF5ItemViews KF5JobWidgets KF5KIOCore KF5KIOFileWidgets
WANTLIB += KF5KIOGui KF5KIOWidgets KF5Parts KF5Service KF5Solid
WANTLIB += KF5SonnetUi KF5TextWidgets KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Script Qt5Widgets Qt5Xml X11 c m

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS =	devel/kf5/kauth>=${MODKF5_VERSION} \
		devel/kf5/kbookmarks>=${MODKF5_VERSION} \
		devel/kf5/kcodecs>=${MODKF5_VERSION} \
		devel/kf5/kcompletion>=${MODKF5_VERSION} \
		devel/kf5/kconfig>=${MODKF5_VERSION} \
		devel/kf5/kconfigwidgets>=${MODKF5_VERSION} \
		devel/kf5/kcoreaddons>=${MODKF5_VERSION} \
		devel/kf5/ki18n>=${MODKF5_VERSION} \
		devel/kf5/kiconthemes>=${MODKF5_VERSION} \
		devel/kf5/kio>=${MODKF5_VERSION} \
		devel/kf5/kparts>=${MODKF5_VERSION} \
		devel/kf5/kservice>=${MODKF5_VERSION} \
		devel/kf5/ktextwidgets>=${MODKF5_VERSION}  \
		devel/kf5/kwidgetsaddons>=${MODKF5_VERSION} \
		devel/kf5/kwindowsystem>=${MODKF5_VERSION} \
		devel/kf5/kxmlgui>=${MODKF5_VERSION} \
		devel/kf5/solid>=${MODKF5_VERSION} \
		devel/kf5/sonnet>=${MODKF5_VERSION} \
		x11/qt5/qtscript

IS_PORTING_AID =	Yes

.include <bsd.port.mk>
