# $OpenBSD: Makefile,v 1.3 2020/11/17 03:19:38 jeremy Exp $

COMMENT =	Kross interpreter plugins for programming
DISTNAME =	kross-interpreters-${VERSION}
PKGNAME =	kross-interpreters-kf5-${VERSION}
CATEGORIES =	devel
REVISION =	0

WANTLIB += ${COMPILER_LIBCXX} KF5KrossCore Qt5Core Qt5Gui Qt5Script
WANTLIB += Qt5Widgets Qt5Xml m ${MODPY_WANTLIB}

MODKDE5_TRANSLATIONS = yes

MODULES +=	lang/python \
		lang/ruby

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_2}

LIB_DEPENDS =	devel/kf5/kross \
		x11/qt5/qtscript

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
