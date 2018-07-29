# $OpenBSD: Makefile,v 1.2 2018/07/29 04:47:34 rsadowski Exp $

COMMENT =	library to compare files and strings
DISTNAME =	libkomparediff2-${VERSION}
PKGNAME =	libkomparediff2-kf5-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  komparediff2              0.0 # 5.2

KDE5 =		Yes
KF5_BUILD_PY =	Yes

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kdoctools

RUN_DEPENDS =	devel/gettext \
		devel/kf5/kdoctools

LIB_DEPENDS =	devel/kf5/ki18n \
		devel/kf5/kcoreaddons \
		devel/kf5/kxmlgui \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kio \

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
