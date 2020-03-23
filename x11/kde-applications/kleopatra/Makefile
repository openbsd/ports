# $OpenBSD: Makefile,v 1.3 2020/03/23 18:01:21 rsadowski Exp $

COMMENT =	certificate manager and a universal crypto GUI
DISTNAME =	kleopatra-${VERSION}
CATEGORIES =	security x11

SHARED_LIBS +=  kleopatraclientcore       0.0 # 1.3
SHARED_LIBS +=  kleopatraclientgui        0.0 # 1.3



MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODULES +=	x11/kde-applications

RUN_DEPENDS +=	security/gnupg2

LIB_DEPENDS +=	devel/kf5/kauth \
		devel/kf5/kcmutils \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kdbusaddons \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kitemmodels \
		devel/kf5/knotifications \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/sonnet \
		security/gpgme,-qt \
		security/libassuan \
		security/libgpg-error \
		x11/kde-applications/kmime \
		x11/kde-applications/libkleo

.include <bsd.port.mk>
