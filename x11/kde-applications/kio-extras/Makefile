# $OpenBSD: Makefile,v 1.8 2020/05/14 12:35:32 ajacoutot Exp $

COMMENT =	extra functionality for kioslaves
DISTNAME =	kio-extras-${VERSION}
CATEGORIES =	productivity net
REVISION =	1

SHARED_LIBS +=  kioarchive                1.0 # 5.97
SHARED_LIBS +=  molletnetwork5            1.0 # 18.08

WANTLIB += ${COMPILER_LIBCXX} Half-2_5 Iex-2_5 IlmImf-2_5 IlmThread-2_5
WANTLIB += Imath-2_5 KF5Activities KF5ActivitiesStats KF5Archive
WANTLIB += KF5Auth KF5AuthCore KF5Bookmarks KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5DBusAddons KF5DNSSD KF5GuiAddons KF5I18n KF5IconThemes
WANTLIB += KF5ItemViews KF5JobWidgets KF5KIOCore KF5KIOFileWidgets
WANTLIB += KF5KIOWidgets KF5Pty KF5Service KF5Solid KF5SyntaxHighlighting
WANTLIB += KF5WidgetsAddons KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Sql Qt5Svg Qt5Widgets Qt5Xml m
WANTLIB += mtp phonon4qt5experimental smbclient ssh tag util

MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODULES +=	x11/kde-applications \
		multimedia/phonon

BUILD_DEPENDS =	devel/gperf

RUN_DEPENDS =	devel/gperf \
		misc/shared-mime-info

LIB_DEPENDS =	audio/taglib \
		devel/kf5/kactivities \
		devel/kf5/kactivities-stats \
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
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kitemviews \
		devel/kf5/kpty \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		devel/kf5/syntax-highlighting \
		devel/libmtp \
		graphics/openexr \
		security/libssh \
		net/samba \
		x11/qt5/qtsvg

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}
TEST_DEPENDS =		${BUILD_PKGPATH}

.include <bsd.port.mk>
