# $OpenBSD: Makefile,v 1.7 2017/10/26 07:53:22 rsadowski Exp $

COMMENT =	KDE Plasma integration support for Qt-based apps
DISTNAME =	frameworkintegration-${VERSION}

SHARED_LIBS =	KF5Style		3.0

WANTLIB += ${COMPILER_LIBCXX} KF5Attica KF5ConfigCore KF5CoreAddons
WANTLIB += KF5I18n KF5NewStuffCore KF5Notifications KF5WidgetsAddons
WANTLIB += Qt5Core Qt5Gui Qt5Network Qt5Widgets c m

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
