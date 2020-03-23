# $OpenBSD: Makefile,v 1.3 2020/03/23 18:01:27 rsadowski Exp $

COMMENT =	certificate manager for KDE
DISTNAME =	libkleo-${VERSION}
CATEGORIES =	security devel


SHARED_LIBS +=  KF5Libkleo                0.0 # 5.10


MODKDE5_TRANSLATIONS = yes

MODULES +=	x11/kde-applications

BUILD_DEPENDS +=	devel/boost

LIB_DEPENDS +=	devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/ki18n \
		devel/kf5/kitemmodels \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		security/gpgme,-qt \
		x11/kde-applications/kpimtextedit


.include <bsd.port.mk>
