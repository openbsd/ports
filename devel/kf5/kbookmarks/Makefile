# $OpenBSD: Makefile,v 1.6 2018/06/04 20:25:31 rsadowski Exp $

COMMENT =		XBEL bookmarks format support for KDE
DISTNAME =		kbookmarks-${VERSION}

SHARED_LIBS =		KF5Bookmarks		3.1

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5IconThemes
WANTLIB += KF5WidgetsAddons KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Widgets
WANTLIB += Qt5Xml m

MODULES =		lang/python

BUILD_DEPENDS =		devel/gettext-tools

LIB_DEPENDS =		devel/kf5/kcodecs \
			devel/kf5/kconfig \
			devel/kf5/kconfigwidgets \
			devel/kf5/kcoreaddons \
			devel/kf5/kiconthemes \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kxmlgui

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
