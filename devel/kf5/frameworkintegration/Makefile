# $OpenBSD: Makefile,v 1.3 2016/12/28 18:49:16 zhuk Exp $

COMMENT =	KDE Plasma integration support for Qt-based apps
DISTNAME =	frameworkintegration-${VERSION}
REVISION =	0

SHARED_LIBS =	KF5Style		1.0

WANTLIB =  KF5Auth KF5Codecs KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5IconThemes KF5Notifications KF5WidgetsAddons
WANTLIB += Qt5Core Qt5Gui Qt5Widgets Qt5X11Extras Qt5Xml m xcb

BUILD_DEPENDS =	devel/gettext-tools \
		devel/kf5/ki18n \
		devel/kf5/kpackage

RUN_DEPENDS =	fonts/noto/fonts \
		devel/kf5/ki18n \
		devel/kf5/kpackage

LIB_DEPENDS =	devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kiconthemes \
		devel/kf5/knotifications \
		devel/kf5/kwidgetsaddons \
		x11/qt5/qtx11extras

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_AppStreamQt=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_packagekitqt5=Yes

PORTHOME =	${WRKDIR}
TEST_IS_INTERACTIVE =	X11

# allow to use "semi-internal" Qt headers
#pre-configure:
#.for d in src/platformtheme autotests
#	rm -f ${WRKSRC}/$d/qpa
#	ln -s ${LOCALBASE}/include/X11/qt5/QtGui/5.*/QtGui/qpa \
#	       ${WRKSRC}/$d/qpa
#.endfor

.include <bsd.port.mk>
