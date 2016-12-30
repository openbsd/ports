# $OpenBSD: Makefile,v 1.4 2016/12/30 20:07:42 zhuk Exp $

COMMENT =		fully featured text editor component
DISTNAME =		ktexteditor-${VERSION}
REVISION =		0

SHARED_LIBS =		KF5TextEditor		1.0

WANTLIB =  KF5Archive KF5Auth KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5GuiAddons
WANTLIB += KF5I18n KF5IconThemes KF5ItemViews KF5JobWidgets KF5KIOCore
WANTLIB += KF5KIOWidgets KF5Parts KF5Service KF5SonnetCore KF5SonnetUi
WANTLIB += KF5TextWidgets KF5WidgetsAddons KF5XmlGui Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5PrintSupport Qt5Script Qt5Widgets
WANTLIB += Qt5Xml git2 m KF5SyntaxHighlighting

BUILD_DEPENDS =		devel/gettext-tools

LIB_DEPENDS =		devel/kf5/karchive \
			devel/kf5/kconfig \
			devel/kf5/kguiaddons \
			devel/kf5/ki18n \
			devel/kf5/kiconthemes \
			devel/kf5/kio \
			devel/kf5/kparts \
			devel/kf5/sonnet \
			devel/kf5/syntax-highlighting \
			devel/libgit2/libgit2 \
			x11/qt5/qtscript \
			x11/qt5/qtxmlpatterns

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
