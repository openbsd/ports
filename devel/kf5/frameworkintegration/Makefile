# $OpenBSD: Makefile,v 1.1.1.1 2016/05/26 23:58:57 zhuk Exp $

COMMENT =	KDE Plasma integration support for Qt-based apps
DISTNAME =	frameworkintegration-${VERSION}

SHARED_LIBS =	KF5Style		0.0

WANTLIB =  KF5Auth KF5Bookmarks KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5I18n
WANTLIB += KF5IconThemes KF5ItemViews KF5JobWidgets KF5KIOCore
WANTLIB += KF5KIOFileWidgets KF5KIOWidgets KF5Notifications KF5Service
WANTLIB += KF5Solid KF5WidgetsAddons KF5XmlGui Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Widgets Qt5X11Extras Qt5Xml Xcursor
WANTLIB += m xcb

BUILD_DEPENDS =	devel/gettext-tools

RUN_DEPENDS =	fonts/noto/fonts

LIB_DEPENDS =	devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/knotifications \
		devel/kf5/kwidgetsaddons

PORTHOME =	${WRKDIR}
TEST_IS_INTERACTIVE =	X11

# TODO: The following tests FAILED:
#          1 - frameworkintegration-kdeplatformtheme_unittest (Failed)
#          4 - frameworkintegration-kfiledialog_unittest (Failed)
#          7 - frameworkintegration-kfiledialogqml_unittest (Failed)

# allow to use "semi-internal" Qt headers
pre-configure:
.for d in src/platformtheme autotests
	rm -f ${WRKSRC}/$d/qpa
	ln -s ${LOCALBASE}/include/X11/qt5/QtGui/5.*/QtGui/qpa \
	       ${WRKSRC}/$d/qpa
.endfor

.include <bsd.port.mk>
