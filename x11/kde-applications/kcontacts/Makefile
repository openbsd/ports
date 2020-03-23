# $OpenBSD: Makefile,v 1.2 2020/03/23 18:01:18 rsadowski Exp $

COMMENT =	KDE contacts access library
DISTNAME =	kcontacts-${VERSION}
CATEGORIES =	devel mail

SHARED_LIBS +=  KF5Contacts               1.0 # 5.1

WANTLIB += ${COMPILER_LIBCXX} KF5Codecs KF5ConfigCore KF5CoreAddons
WANTLIB += KF5I18n Qt5Core Qt5Gui m

MODULES +=	x11/kde-applications

MODKDE5_TRANSLATIONS = yes

LIB_DEPENDS =	devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n

.include <bsd.port.mk>
