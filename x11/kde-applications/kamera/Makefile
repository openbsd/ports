# $OpenBSD: Makefile,v 1.5 2020/06/03 05:13:36 rsadowski Exp $

COMMENT =	KDE digital camera support
DISTNAME =	kamera-${VERSION}
CATEGORIES =	x11 graphics
REVISION =	0

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5I18n
WANTLIB += KF5KIOCore KF5Service KF5WidgetsAddons KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets Qt5Xml
WANTLIB += gphoto2 gphoto2_port m

MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes

MODULES +=	x11/kde-applications

# XXX fix with new libgphoto2; revisit at next update
CXXFLAGS +=	-I/usr/local/include -DHAVE_GPHOTO2_5

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		graphics/libgphoto2

.include <bsd.port.mk>
