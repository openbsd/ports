# $OpenBSD: Makefile,v 1.5 2019/03/24 11:56:58 rsadowski Exp $

COMMENT =	Dolphin plugins
DISTNAME =	dolphin-plugins-${VERSION}
PKGNAME  =	dolphin-plugins-kf5-${VERSION}
CATEGORIES =	x11
REVISION  =	0


WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5Bookmarks KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5I18n KF5ItemViews KF5JobWidgets KF5KIOCore KF5KIOFileWidgets
WANTLIB += KF5KIOWidgets KF5Parts KF5Service KF5Solid KF5SonnetUi
WANTLIB += KF5TextEditor KF5TextWidgets KF5WidgetsAddons KF5XmlGui
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets
WANTLIB += Qt5Xml dolphinvcs m

MODKDE5_TRANSLATIONS = yes

MODULES +=	x11/kde-applications

LIB_DEPENDS +=	devel/kf5/kauth \
		devel/kf5/kbookmarks \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/kparts \
		devel/kf5/kservice \
		devel/kf5/ktexteditor \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui\
		devel/kf5/sonnet \
		x11/kde-applications/dolphin

.include <bsd.port.mk>
