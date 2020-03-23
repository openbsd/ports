# $OpenBSD: Makefile,v 1.39 2020/03/23 18:01:13 rsadowski Exp $

COMMENT =	user-friendly TeX/LaTeX editor for KDE

CATEGORIES =	editors

DISTNAME =	kile-2.9.92
REVISION =	2

HOMEPAGE =	https://kile.sourceforge.io

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Bookmarks
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5Crash KF5DBusAddons
WANTLIB += KF5GuiAddons KF5I18n KF5IconThemes KF5ItemViews KF5JS
WANTLIB += KF5JobWidgets KF5KHtml KF5KIOCore KF5KIOFileWidgets
WANTLIB += KF5KIOWidgets KF5Parts KF5Service KF5Solid KF5SonnetUi
WANTLIB += KF5TextEditor KF5TextWidgets KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Script Qt5Widgets Qt5Xml c m poppler poppler-qt5

# dlopen(3)
WANTLIB += Okular5Core

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=kile/}
EXTRACT_SUFX =	.tar.bz2

MODULES =	devel/kf5 \
		multimedia/phonon

BUILD_DEPENDS +=devel/gettext,-tools \
		devel/kf5/kdoctools \
		devel/kf5/kinit \
		x11/kde-applications/kate

RUN_DEPENDS +=	devel/desktop-file-utils \
		devel/kf5/kdoctools \
		devel/kf5/kinit \
		graphics/ImageMagick \
		misc/shared-mime-info \
		print/texlive/base \
		x11/gtk+3,-guic \
		x11/kde-applications/kate

LIB_DEPENDS +=	devel/kf5/kauth \
		devel/kf5/kbookmarks \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kdbusaddons \
		devel/kf5/kguiaddons \
		devel/kf5/khtml \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kjs \
		devel/kf5/kparts \
		devel/kf5/ktexteditor \
		devel/kf5/ktextwidgets \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/sonnet \
		print/poppler,-qt5 \
		x11/kde-applications/okular

.include <bsd.port.mk>
