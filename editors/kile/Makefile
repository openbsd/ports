COMMENT =	user-friendly TeX/LaTeX editor for KDE

CATEGORIES =	editors

DISTNAME =	kile-2.9.93
REVISION =	6

HOMEPAGE =	https://kile.sourceforge.io

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Bookmarks
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5Crash KF5DBusAddons
WANTLIB += KF5GuiAddons KF5I18n KF5IconThemes KF5ItemViews KF5JS
WANTLIB += KF5JobWidgets KF5KHtml KF5KIOCore KF5KIOFileWidgets
WANTLIB += KF5KIOGui KF5KIOWidgets KF5Parts KF5Service KF5Solid
WANTLIB += KF5SonnetUi KF5SyntaxHighlighting KF5TextEditor KF5TextWidgets
WANTLIB += KF5WidgetsAddons KF5WindowSystem KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Script Qt5Widgets
WANTLIB += Qt5Xml X11 c m poppler poppler-qt5

SITES =		${SITE_SOURCEFORGE:=kile/}
EXTRACT_SUFX =	.tar.bz2

MODULES =	devel/kf5

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/kf5/kdoctools \
		devel/kf5/kinit \
		x11/kde-applications/kate \
		x11/kde-applications/okular \
		multimedia/phonon

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/kf5/kdoctools \
		devel/kf5/kinit \
		graphics/ImageMagick \
		misc/shared-mime-info \
		print/texlive/base \
		x11/gtk+4,-guic \
		x11/kde-applications/kate \
		x11/kde-applications/okular

LIB_DEPENDS =	devel/kf5/kauth \
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
		x11/qt5/qtscript


.include <bsd.port.mk>
