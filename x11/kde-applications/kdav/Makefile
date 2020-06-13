# $OpenBSD: Makefile,v 1.1.1.1 2020/06/13 19:29:28 rsadowski Exp $

COMMENT =	KDE PIM DAV protocol support library
DISTNAME =	kdav-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  KPimKDAV       0.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5CoreAddons KF5I18n
WANTLIB += KF5KIOCore KF5Service Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Xml Qt5XmlPatterns m

MODKDE5_TRANSLATIONS = yes

MODULES +=	x11/kde-applications

LIB_DEPENDS =	devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kservice \
		x11/qt5/qtxmlpatterns

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
