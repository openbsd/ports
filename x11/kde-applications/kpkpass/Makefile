# $OpenBSD: Makefile,v 1.2 2020/09/07 14:49:24 rsadowski Exp $

COMMENT =	KDE PIM Apple wallet file support library
DISTNAME =	kpkpass-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  KPimPkPass      1.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} KF5Archive Qt5Core Qt5Gui m

MODKDE5_TRANSLATIONS = yes

MODULES +=	x11/kde-applications

LIB_DEPENDS =	devel/kf5/karchive


TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
