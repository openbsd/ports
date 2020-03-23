# $OpenBSD: Makefile,v 1.3 2020/03/23 18:01:18 rsadowski Exp $

COMMENT =	library for the handling of calendar data.
DISTNAME =	kcalutils-${VERSION}
CATEGORIES =	productivity

SHARED_LIBS +=  KF5CalendarUtils          0.0 # 5.6



MODKDE5_TRANSLATIONS = yes

MODULES +=	x11/kde-applications

LIB_DEPENDS +=	devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kwidgetsaddons \
		x11/grantlee-qt5 \
		x11/kde-applications/kcalcore \
		x11/kde-applications/kidentitymanagement

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
