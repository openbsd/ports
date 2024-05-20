COMMENT =	user-friendly TeX/LaTeX editor for KDE

CATEGORIES =	editors

V =		2.9.94
DISTNAME =	kile-${V}-1
PKGNAME =	kile-${V}

HOMEPAGE =	https://kile.sourceforge.io

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6Bookmarks KF6Codecs KF6ColorScheme
WANTLIB += KF6Completion KF6ConfigCore KF6ConfigGui KF6ConfigWidgets
WANTLIB += KF6CoreAddons KF6Crash KF6DBusAddons KF6GuiAddons KF6I18n
WANTLIB += KF6IconThemes KF6IconWidgets KF6ItemViews KF6JobWidgets
WANTLIB += KF6KIOCore KF6KIOFileWidgets KF6KIOGui KF6KIOWidgets
WANTLIB += KF6Parts KF6Service KF6Solid KF6SonnetUi KF6SyntaxHighlighting
WANTLIB += KF6TextEditor KF6TextWidgets KF6WidgetsAddons KF6WindowSystem
WANTLIB += KF6XmlGui Qt6Core Qt6Core5Compat Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6Qml Qt6Widgets Qt6Xml X11 c m poppler poppler-qt6

SITES =		${SITE_SOURCEFORGE:=kile/}
EXTRACT_SUFX =	.tar.bz2

MODULES =	devel/kf6

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/kf6/kdoctools \
		x11/kde-applications/kate \
		x11/kde-applications/okular \
		multimedia/phonon,qt6

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/kf6/kdoctools \
		graphics/ImageMagick \
		misc/shared-mime-info \
		print/texlive/base \
		x11/gtk+4,-guic \
		x11/kde-applications/kate \
		x11/kde-applications/okular

LIB_DEPENDS =	devel/kf6/kbookmarks \
		devel/kf6/kcodecs \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/kparts \
		devel/kf6/kservice \
		devel/kf6/ktexteditor \
		devel/kf6/ktextwidgets \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		devel/kf6/sonnet \
		devel/kf6/syntax-highlighting \
		print/poppler,-qt6 \
		x11/qt6/qt5compat \
		x11/qt6/qtdeclarative

WRKDIST =	${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
