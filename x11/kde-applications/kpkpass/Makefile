# $OpenBSD: Makefile,v 1.4 2020/11/03 20:14:44 rsadowski Exp $

COMMENT =	KDE PIM Apple wallet file support library
DISTNAME =	kpkpass-${VERSION}
CATEGORIES =	devel
REVISION =	0

SHARED_LIBS +=  KPimPkPass      1.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} KF5Archive Qt5Core Qt5Gui m

MODKDE5_TRANSLATIONS = yes

LIB_DEPENDS =	devel/kf5/karchive
RUN_DEPENDS =	misc/shared-mime-info

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
