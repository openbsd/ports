# $OpenBSD: Makefile,v 1.5 2019/11/10 15:32:55 ajacoutot Exp $

COMMENT =	extra functionality for kioslaves
DISTNAME =	kio-extras-${VERSION}
CATEGORIES =	productivity net
REVISION =	1


SHARED_LIBS +=  kioarchive                0.0 # 5.97
SHARED_LIBS +=  molletnetwork5            0.0 # 18.08

WANTLIB += ${COMPILER_LIBCXX} Half-2_4 Iex-2_4 IlmImf-2_4 IlmThread-2_4
WANTLIB += Imath-2_4 KF5Activities KF5Archive KF5Auth KF5Bookmarks
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5DBusAddons KF5DNSSD
WANTLIB += KF5GuiAddons KF5I18n KF5IconThemes KF5ItemViews KF5JS
WANTLIB += KF5JobWidgets KF5KHtml KF5KIOCore KF5KIOFileWidgets
WANTLIB += KF5KIOWidgets KF5Parts KF5Pty KF5Service KF5Solid KF5SonnetUi
WANTLIB += KF5TextWidgets KF5WidgetsAddons KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Sql Qt5Svg Qt5Widgets
WANTLIB += Qt5Xml m mtp phonon4qt5experimental smbclient ssh tag
WANTLIB += util

MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODULES +=	x11/kde-applications \
		multimedia/phonon

BUILD_DEPENDS +=devel/gperf

RUN_DEPENDS +=	devel/gperf \
		misc/shared-mime-info

LIB_DEPENDS +=	audio/taglib \
		devel/kf5/kactivities \
		devel/kf5/karchive \
		devel/kf5/kauth \
		devel/kf5/kbookmarks \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kdbusaddons \
		devel/kf5/kdnssd \
		devel/kf5/kguiaddons \
		devel/kf5/khtml \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kitemviews \
		devel/kf5/kjs \
		devel/kf5/kparts \
		devel/kf5/kpty \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		devel/kf5/sonnet \
		devel/libmtp \
		graphics/openexr \
		security/libssh \
		net/samba \
		x11/qt5/qtsvg

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}
TEST_DEPENDS =		${BUILD_PKGPATH}

.include <bsd.port.mk>
