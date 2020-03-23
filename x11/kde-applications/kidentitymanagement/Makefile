# $OpenBSD: Makefile,v 1.3 2020/03/23 18:01:20 rsadowski Exp $

COMMENT =	KDE pim identities
DISTNAME =	kidentitymanagement-${VERSION}
CATEGORIES =	devel mail

SHARED_LIBS +=  KF5IdentityManagement     0.0 # 5.10



MODULES +=	x11/kde-applications

MODKDE5_TRANSLATIONS = yes

LIB_DEPENDS +=	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		x11/kde-applications/kpimtextedit

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
