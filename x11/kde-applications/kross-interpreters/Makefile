# $OpenBSD: Makefile,v 1.1.1.1 2020/06/14 05:13:56 rsadowski Exp $

COMMENT =	Kross interpreter plugins for programming
DISTNAME =	kross-interpreters-${VERSION}
PKGNAME =	kross-interpreters-kf5-${VERSION}
CATEGORIES =	devel

WANTLIB += ${COMPILER_LIBCXX} KF5KrossCore Qt5Core Qt5Gui Qt5Script
WANTLIB += Qt5Widgets Qt5Xml m ${MODPY_WANTLIB}

MODKDE5_TRANSLATIONS = yes

MODULES +=	x11/kde-applications \
		lang/python \
		lang/ruby

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_2}

LIB_DEPENDS =	devel/kf5/kross \
		x11/qt5/qtscript

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
