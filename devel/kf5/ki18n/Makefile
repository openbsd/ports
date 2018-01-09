# $OpenBSD: Makefile,v 1.6 2018/01/09 21:10:39 rsadowski Exp $

COMMENT =	KDE Gettext-based UI text internationalization
DISTNAME =	ki18n-${VERSION}

SHARED_LIBS =	KF5I18n		4.0

WANTLIB =	${COMPILER_LIBCXX} Qt5Core Qt5Script intl m

MODULES =	lang/python

BUILD_DEPENDS =	devel/gettext-tools

LIB_DEPENDS =	devel/gettext \
		x11/qt5/qtscript

# for tests
PORTHOME =	${WRKDIR}

# Calling compileall.py isn't needed, the ts-pmap-compile script
# gets called with "${PYTHON} -B ...".

.include <bsd.port.mk>
