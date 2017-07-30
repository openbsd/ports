# $OpenBSD: Makefile,v 1.6 2017/07/30 15:49:36 espie Exp $

COMMENT =	KDE Plasma integration support for Qt-based apps
DISTNAME =	frameworkintegration-${VERSION}
REVISION =	2

SHARED_LIBS =	KF5Style		2.0

WANTLIB += KF5Attica KF5Auth KF5Codecs KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5I18n KF5IconThemes
WANTLIB += KF5NewStuffCore KF5Notifications KF5WidgetsAddons ${COMPILER_LIBCXX} Qt5Core
WANTLIB += Qt5Gui Qt5Network Qt5Widgets Qt5X11Extras Qt5Xml c
WANTLIB += m xcb

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
		devel/kf5/knewstuff \
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
